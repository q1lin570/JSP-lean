import JSP848.ReplayState

namespace JSP848

abbrev SnapshotTree (α : Type) := Std.DTreeMap.Internal.Impl ℕ (fun _ => α)

namespace SnapshotTree

def same [BEq α] : SnapshotTree α → SnapshotTree α → Bool
  | .leaf, .leaf => true
  | .inner size key value left right, .inner size' key' value' left' right' =>
    size == size' && key == key' && value == value' && same left left' && same right right'
  | _, _ => false

theorem same_iff [BEq α] [LawfulBEq α] (t u : SnapshotTree α) :
    same t u = true ↔ t = u := by
  induction t generalizing u with
  | leaf => cases u <;> simp [same]
  | inner size key value left right ihl ihr =>
    cases u <;> simp [same, ihl, ihr, and_assoc]

end SnapshotTree

/-- Plain tree data contain no replay computation or well-formedness proof. -/
structure ReplaySnapshot where
  bound : ℕ
  capacity : ℕ
  buckets : SnapshotTree (List ℕ)
  index : SnapshotTree Unit

namespace ReplaySnapshot

def ofState (s : ReplayState) : ReplaySnapshot :=
  ⟨s.bound, s.buckets.capacity, s.buckets.data.inner.inner, s.index.inner.inner⟩

def check (s : ReplayState) (snapshot : ReplaySnapshot) : Bool :=
  decide (s.bound = snapshot.bound) && decide (s.buckets.capacity = snapshot.capacity) &&
    SnapshotTree.same s.buckets.data.inner.inner snapshot.buckets &&
    SnapshotTree.same s.index.inner.inner snapshot.index

theorem check_iff (s : ReplayState) (snapshot : ReplaySnapshot) :
    check s snapshot = true ↔ ofState s = snapshot := by
  cases snapshot
  simp [check, ofState, SnapshotTree.same_iff, and_assoc]

/-- Only proof fields refer to the old computation; runtime fields are supplied literals. -/
def materialize (snapshot : ReplaySnapshot) (s : ReplayState) (h : ofState s = snapshot) :
    ReplayState where
  bound := snapshot.bound
  buckets := ⟨snapshot.capacity, ⟨⟨snapshot.buckets, by
    have hb := congrArg ReplaySnapshot.buckets h
    exact hb ▸ s.buckets.data.inner.wf⟩⟩⟩
  index := ⟨⟨snapshot.index, by
    have hi := congrArg ReplaySnapshot.index h
    exact hi ▸ s.index.inner.wf⟩⟩

theorem materialize_eq (snapshot : ReplaySnapshot) (s : ReplayState) (h : ofState s = snapshot) :
    snapshot.materialize s h = s := by
  subst snapshot
  rfl

def checkResult (result : Option ReplayState) (snapshot : ReplaySnapshot) : Bool :=
  result.any (fun s => check s snapshot)

theorem result_isSome {result : Option ReplayState} {snapshot : ReplaySnapshot}
    (hcheck : checkResult result snapshot = true) : result.isSome = true := by
  cases result <;> simp_all [checkResult]

theorem result_data {result : Option ReplayState} {snapshot : ReplaySnapshot}
    (hcheck : checkResult result snapshot = true) :
    ofState (result.get (result_isSome hcheck)) = snapshot := by
  cases result with
  | none => simp [checkResult] at hcheck
  | some s => exact (check_iff s snapshot).mp hcheck

def restore (result : Option ReplayState) (snapshot : ReplaySnapshot)
    (hcheck : checkResult result snapshot = true) : ReplayState :=
  snapshot.materialize (result.get (result_isSome hcheck)) (result_data hcheck)

theorem restore_eq_result {result : Option ReplayState} {snapshot : ReplaySnapshot}
    (hcheck : checkResult result snapshot = true) :
    result = some (restore result snapshot hcheck) := by
  rw [restore, materialize_eq]
  exact Option.eq_some_of_isSome (result_isSome hcheck)

theorem restore_valid {s : ReplayState} {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n) (hs : s.Valid)
    {events : List BucketEvent} {snapshot : ReplaySnapshot}
    (hcheck : checkResult (s.runChunkWith squarefreeCheck events) snapshot = true) :
    (restore (s.runChunkWith squarefreeCheck events) snapshot hcheck).Valid :=
  ReplayState.runChunkWith_valid hsf hs (restore_eq_result hcheck)

end ReplaySnapshot

end JSP848
