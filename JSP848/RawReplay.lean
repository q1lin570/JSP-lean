import JSP848.ReplaySnapshot

namespace JSP848

/-- Raw data allow independent transition checks before validity proofs are composed. -/
structure RawBuckets where
  capacity : Nat
  data : SnapshotTree (List Nat)

namespace RawBuckets

def ofTree (s : TreeBuckets) : RawBuckets := ⟨s.capacity, s.data.inner.inner⟩

def members (s : RawBuckets) (c : Nat) : List Nat :=
  Std.DTreeMap.Internal.Impl.Const.getD s.data c []

def remove (s : RawBuckets) (v c : Nat) : RawBuckets :=
  ⟨s.capacity, s.data.insert! c ((s.members c).filter (fun a => a != v))⟩

def put (s : RawBuckets) (v c : Nat) : RawBuckets :=
  ⟨s.capacity, s.data.insert! c (v :: s.members c)⟩

theorem ofTree_remove (s : TreeBuckets) (v c : Nat) :
    (ofTree s).remove v c = ofTree (s.remove v c) := by
  simp only [remove, ofTree, TreeBuckets.remove, Std.TreeMap.insert, Std.DTreeMap.insert,
    Std.DTreeMap.Internal.Impl.insert_eq_insert!]
  rfl

theorem ofTree_put (s : TreeBuckets) (v c : Nat) :
    (ofTree s).put v c = ofTree (s.put v c) := by
  simp only [put, ofTree, TreeBuckets.put, Std.TreeMap.insert, Std.DTreeMap.insert,
    Std.DTreeMap.Internal.Impl.insert_eq_insert!]
  rfl

def insertChecked (sf : Nat → Bool) (k : Nat) (s : RawBuckets) (v c : Nat) : Option RawBuckets :=
  if c < k ∧ c < s.capacity ∧ (s.members c).all (fun a => sf (v * a + 1)) = true
  then some (s.put v c) else none

theorem insertChecked_refines (sf : Nat → Bool) (k : Nat) (s : TreeBuckets) (v c : Nat) :
    insertChecked sf k (ofTree s) v c = (TreeBuckets.insertChecked sf k s v c).map ofTree := by
  unfold insertChecked TreeBuckets.insertChecked
  have hm : (ofTree s).members c = s.members c := rfl
  rw [hm]
  change (if c < k ∧ c < s.capacity ∧ _ then _ else _) = _
  split <;> simp_all [ofTree_put]

def clearMoves (s : RawBuckets) : List BucketMove → RawBuckets
  | [] => s
  | m :: rest => clearMoves (s.remove m.vertex m.oldColor) rest

theorem clearMoves_refines (s : TreeBuckets) (moves : List BucketMove) :
    (ofTree s).clearMoves moves = ofTree (s.clearMoves moves) := by
  induction moves generalizing s with
  | nil => rfl
  | cons m rest ih => simp only [clearMoves, TreeBuckets.clearMoves, ofTree_remove, ih]

def insertMoves (sf : Nat → Bool) (k : Nat) (s : RawBuckets) : List BucketMove → Option RawBuckets
  | [] => some s
  | m :: rest => (insertChecked sf k s m.vertex m.newColor).bind
      (fun next => insertMoves sf k next rest)

theorem insertMoves_refines (sf : Nat → Bool) (k : Nat) (s : TreeBuckets) (moves : List BucketMove) :
    insertMoves sf k (ofTree s) moves = (TreeBuckets.insertMoves sf k s moves).map ofTree := by
  induction moves generalizing s with
  | nil => rfl
  | cons m rest ih =>
    simp only [insertMoves, insertChecked_refines, TreeBuckets.insertMoves]
    cases h : TreeBuckets.insertChecked sf k s m.vertex m.newColor with
    | none => rfl
    | some next => simpa only [Option.map_some, Option.bind_some] using ih next

def checkEvent (sf : Nat → Bool) (k : Nat) (s : RawBuckets) (e : BucketEvent) : Option RawBuckets :=
  if k ≤ optimum e.vertex ∧ e.moves.any (fun m => m.vertex == e.vertex) = true
  then insertMoves sf (optimum e.vertex) (s.clearMoves e.moves) e.moves else none

theorem checkEvent_refines (sf : Nat → Bool) (k : Nat) (s : TreeBuckets) (e : BucketEvent) :
    checkEvent sf k (ofTree s) e = (TreeBuckets.checkEvent sf k s e).map ofTree := by
  unfold checkEvent TreeBuckets.checkEvent TreeBuckets.recolor
  split
  · simpa only [clearMoves_refines] using insertMoves_refines sf (optimum e.vertex)
      (s.clearMoves e.moves) e.moves
  · rfl

end RawBuckets

namespace RawReplay

def step (sf : Nat → Bool) (s : ReplaySnapshot) (e : BucketEvent) : Option ReplaySnapshot :=
  (RawBuckets.checkEvent sf s.bound ⟨s.capacity, s.buckets⟩ e).map (fun out =>
    ⟨optimum e.vertex, out.capacity, out.data, s.index.insert! e.vertex ()⟩)

theorem step_refines (sf : Nat → Bool) (s : ReplayState) (e : BucketEvent) :
    step sf (ReplaySnapshot.ofState s) e = (s.stepWith sf e).map ReplaySnapshot.ofState := by
  change (RawBuckets.checkEvent sf s.bound (RawBuckets.ofTree s.buckets) e).map _ = _
  rw [RawBuckets.checkEvent_refines]
  simp only [ReplayState.stepWith, Option.map_map, Function.comp_def, ReplaySnapshot.ofState,
    RawBuckets.ofTree, Std.TreeMap.insert, Std.DTreeMap.insert,
    Std.DTreeMap.Internal.Impl.insert_eq_insert!]

def runChunk (sf : Nat → Bool) (s : ReplaySnapshot) : List BucketEvent → Option ReplaySnapshot
  | [] => some s
  | e :: rest => (step sf s e).bind (fun next => runChunk sf next rest)

theorem runChunk_refines (sf : Nat → Bool) (s : ReplayState) (events : List BucketEvent) :
    runChunk sf (ReplaySnapshot.ofState s) events =
      (s.runChunkWith sf events).map ReplaySnapshot.ofState := by
  induction events generalizing s with
  | nil => rfl
  | cons e rest ih =>
    simp only [runChunk, step_refines, ReplayState.runChunkWith]
    cases h : s.stepWith sf e with
    | none => rfl
    | some next => simpa only [Option.map_some, Option.bind_some] using ih next

def same (s out : ReplaySnapshot) : Bool :=
  decide (s.bound = out.bound) && decide (s.capacity = out.capacity) &&
    SnapshotTree.same s.buckets out.buckets && SnapshotTree.same s.index out.index

def checkChunk (sf : Nat → Bool) (s : ReplaySnapshot) (events : List BucketEvent)
    (out : ReplaySnapshot) : Bool :=
  (runChunk sf s events).any (fun candidate => same candidate out)

theorem checkChunk_refines (sf : Nat → Bool) (s : ReplayState) (events : List BucketEvent)
    (out : ReplaySnapshot) :
    checkChunk sf (ReplaySnapshot.ofState s) events out =
      ReplaySnapshot.checkResult (s.runChunkWith sf events) out := by
  rw [checkChunk, runChunk_refines]
  cases s.runChunkWith sf events <;> rfl

def Valid (s : ReplaySnapshot) : Prop := ∃ state, state.Valid ∧ ReplaySnapshot.ofState state = s

theorem ofState_valid {s : ReplayState} (hs : s.Valid) : Valid (ReplaySnapshot.ofState s) :=
  ⟨s, hs, rfl⟩

theorem checked_valid {sf : Nat → Bool} (hsf : ∀ n, sf n = true → Squarefree n)
    {s out : ReplaySnapshot} {events : List BucketEvent} (hs : Valid s)
    (hcheck : checkChunk sf s events out = true) : Valid out := by
  obtain ⟨state, hv, rfl⟩ := hs
  rw [checkChunk_refines] at hcheck
  cases hrun : state.runChunkWith sf events with
  | none => simp [ReplaySnapshot.checkResult, hrun] at hcheck
  | some next =>
    refine ⟨next, ReplayState.runChunkWith_valid hsf hv hrun, ?_⟩
    apply (ReplaySnapshot.check_iff next out).mp
    simpa only [ReplaySnapshot.checkResult, hrun, Option.any_some] using hcheck

end RawReplay

end JSP848
