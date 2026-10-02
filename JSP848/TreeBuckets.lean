import JSP848.BucketEvents
import Std.Data.TreeMap.Lemmas

namespace JSP848

/-- Capacity is a checked bound; unused buckets require no allocated entries. -/
structure TreeBuckets where
  capacity : ℕ
  data : Std.TreeMap ℕ (List ℕ)

namespace TreeBuckets

def members (s : TreeBuckets) (c : ℕ) : List ℕ := s.data.getD c []

def Matches (s : TreeBuckets) (a : ColorBuckets) : Prop :=
  s.capacity = a.size ∧ ∀ c, s.members c = a.members c

def empty (capacity : ℕ) : TreeBuckets := ⟨capacity, ∅⟩

@[simp] theorem members_empty (capacity c : ℕ) : (empty capacity).members c = [] := by
  simp [members, empty]

theorem empty_matches (capacity : ℕ) :
    (empty capacity).Matches (ColorBuckets.empty capacity) := by
  constructor
  · simp [empty, ColorBuckets.empty]
  · intro c
    simp

def remove (s : TreeBuckets) (v c : ℕ) : TreeBuckets :=
  { s with data := s.data.insert c ((s.members c).filter (fun a => a != v)) }

theorem members_remove (s : TreeBuckets) (v c d : ℕ) :
    (s.remove v c).members d =
      if c = d then (s.members d).filter (fun a => a != v) else s.members d := by
  simp only [remove, members, Std.TreeMap.getD_insert, Nat.compare_eq_eq]
  by_cases h : c = d <;> simp [h]

theorem remove_matches {s : TreeBuckets} {a : ColorBuckets} (hs : s.Matches a)
    (v c : ℕ) : (s.remove v c).Matches (a.remove v c) := by
  constructor
  · simpa [remove, ColorBuckets.remove] using hs.1
  · intro d
    rw [members_remove, ColorBuckets.members_remove, hs.2 d]

def put (s : TreeBuckets) (v c : ℕ) : TreeBuckets :=
  { s with data := s.data.insert c (v :: s.members c) }

theorem members_put (s : TreeBuckets) (v c d : ℕ) :
    (s.put v c).members d = if c = d then v :: s.members d else s.members d := by
  simp only [put, members, Std.TreeMap.getD_insert, Nat.compare_eq_eq]
  by_cases h : c = d <;> simp [h]

theorem put_matches {s : TreeBuckets} {a : ColorBuckets} (hs : s.Matches a)
    (v c : ℕ) (hc : c < s.capacity) : (s.put v c).Matches (a.put v c) := by
  constructor
  · simpa [put, ColorBuckets.put] using hs.1
  · intro d
    have hca : c < a.size := hs.1 ▸ hc
    rw [members_put, ColorBuckets.members_put hca, hs.2 d]

def insertChecked (squarefreeCheck : ℕ → Bool) (k : ℕ) (s : TreeBuckets)
    (v c : ℕ) : Option TreeBuckets :=
  if c < k ∧ c < s.capacity ∧ (s.members c).all (fun a => squarefreeCheck (v * a + 1)) = true
  then some (s.put v c) else none

theorem insertChecked_refines {squarefreeCheck : ℕ → Bool} {k v c : ℕ}
    {s out : TreeBuckets} {a : ColorBuckets} (hs : s.Matches a)
    (hcheck : insertChecked squarefreeCheck k s v c = some out) :
    ∃ aout, ColorBuckets.insertChecked squarefreeCheck k a v c = some aout ∧
      out.Matches aout := by
  unfold insertChecked at hcheck
  split at hcheck
  · rename_i hc
    have heq : s.put v c = out := Option.some.inj hcheck
    subst out
    refine ⟨a.put v c, ?_, put_matches hs v c hc.2.1⟩
    have hc' : c < k ∧ c < a.size ∧
        (a.members c).all (fun b => squarefreeCheck (v * b + 1)) = true := by
      simpa only [hs.1, hs.2 c] using hc
    simp only [ColorBuckets.insertChecked, if_pos hc']
  · cases hcheck

def clearMoves (s : TreeBuckets) : List BucketMove → TreeBuckets
  | [] => s
  | m :: rest => clearMoves (s.remove m.vertex m.oldColor) rest

theorem clearMoves_matches {s : TreeBuckets} {a : ColorBuckets} (hs : s.Matches a)
    (moves : List BucketMove) : (s.clearMoves moves).Matches (a.clearMoves moves) := by
  induction moves generalizing s a with
  | nil => exact hs
  | cons m rest ih => exact ih (remove_matches hs m.vertex m.oldColor)

def insertMoves (squarefreeCheck : ℕ → Bool) (k : ℕ) (s : TreeBuckets) :
    List BucketMove → Option TreeBuckets
  | [] => some s
  | m :: rest =>
    match insertChecked squarefreeCheck k s m.vertex m.newColor with
    | none => none
    | some next => insertMoves squarefreeCheck k next rest

theorem insertMoves_refines {squarefreeCheck : ℕ → Bool} {k : ℕ}
    {s out : TreeBuckets} {a : ColorBuckets} {moves : List BucketMove}
    (hs : s.Matches a) (hcheck : insertMoves squarefreeCheck k s moves = some out) :
    ∃ aout, ColorBuckets.insertMoves squarefreeCheck k a moves = some aout ∧
      out.Matches aout := by
  induction moves generalizing s a with
  | nil =>
    have heq : s = out := Option.some.inj hcheck
    subst out
    exact ⟨a, rfl, hs⟩
  | cons m rest ih =>
    cases hstep : insertChecked squarefreeCheck k s m.vertex m.newColor with
    | none => simp [insertMoves, hstep] at hcheck
    | some next =>
      have hrest : insertMoves squarefreeCheck k next rest = some out := by
        simpa only [insertMoves, hstep] using hcheck
      obtain ⟨anext, ha, hn⟩ := insertChecked_refines hs hstep
      obtain ⟨aout, haout, hm⟩ := ih hn hrest
      exact ⟨aout, by simpa only [ColorBuckets.insertMoves, ha] using haout, hm⟩

def recolor (squarefreeCheck : ℕ → Bool) (k : ℕ) (s : TreeBuckets)
    (moves : List BucketMove) : Option TreeBuckets :=
  insertMoves squarefreeCheck k (s.clearMoves moves) moves

theorem recolor_refines {squarefreeCheck : ℕ → Bool} {k : ℕ}
    {s out : TreeBuckets} {a : ColorBuckets} {moves : List BucketMove}
    (hs : s.Matches a) (hcheck : recolor squarefreeCheck k s moves = some out) :
    ∃ aout, ColorBuckets.recolor squarefreeCheck k a moves = some aout ∧
      out.Matches aout :=
  insertMoves_refines (clearMoves_matches hs moves) hcheck

def checkEvent (squarefreeCheck : ℕ → Bool) (k : ℕ) (s : TreeBuckets)
    (e : BucketEvent) : Option TreeBuckets :=
  if k ≤ optimum e.vertex ∧ e.moves.any (fun m => m.vertex == e.vertex) = true
  then recolor squarefreeCheck (optimum e.vertex) s e.moves else none

theorem checkEvent_refines {squarefreeCheck : ℕ → Bool} {k : ℕ}
    {s out : TreeBuckets} {a : ColorBuckets} {e : BucketEvent}
    (hs : s.Matches a) (hcheck : checkEvent squarefreeCheck k s e = some out) :
    ∃ aout, ColorBuckets.checkEvent squarefreeCheck k a e = some aout ∧
      out.Matches aout := by
  unfold checkEvent at hcheck
  split at hcheck
  · rename_i hc
    obtain ⟨aout, haout, hm⟩ := recolor_refines hs hcheck
    exact ⟨aout, by simpa only [ColorBuckets.checkEvent, if_pos hc] using haout, hm⟩
  · cases hcheck

def replayEvents (squarefreeCheck : ℕ → Bool) (k : ℕ) (s : TreeBuckets) :
    List BucketEvent → Option TreeBuckets
  | [] => some s
  | e :: rest =>
    match checkEvent squarefreeCheck k s e with
    | none => none
    | some next => replayEvents squarefreeCheck (optimum e.vertex) next rest

theorem replayEvents_refines {squarefreeCheck : ℕ → Bool} {k : ℕ}
    {s out : TreeBuckets} {a : ColorBuckets} {events : List BucketEvent}
    (hs : s.Matches a) (hcheck : replayEvents squarefreeCheck k s events = some out) :
    ∃ aout, ColorBuckets.replayEvents squarefreeCheck k a events = some aout ∧
      out.Matches aout := by
  induction events generalizing k s a with
  | nil =>
    have heq : s = out := Option.some.inj hcheck
    subst out
    exact ⟨a, rfl, hs⟩
  | cons e rest ih =>
    cases hstep : checkEvent squarefreeCheck k s e with
    | none => simp [replayEvents, hstep] at hcheck
    | some next =>
      have hrest : replayEvents squarefreeCheck (optimum e.vertex) next rest = some out := by
        simpa only [replayEvents, hstep] using hcheck
      obtain ⟨anext, ha, hn⟩ := checkEvent_refines hs hstep
      obtain ⟨aout, haout, hm⟩ := ih hn hrest
      exact ⟨aout, by simpa only [ColorBuckets.replayEvents, ha] using haout, hm⟩

end TreeBuckets

def checkTreeBucketEvents (squarefreeCheck : ℕ → Bool) (capacity : ℕ)
    (events : List BucketEvent) : Bool :=
  (TreeBuckets.replayEvents squarefreeCheck 0 (TreeBuckets.empty capacity) events).isSome

theorem checkTreeBucketEvents_refines {squarefreeCheck : ℕ → Bool}
    {capacity : ℕ} {events : List BucketEvent}
    (hcheck : checkTreeBucketEvents squarefreeCheck capacity events = true) :
    checkBucketEvents squarefreeCheck capacity events = true := by
  obtain ⟨out, hout⟩ := Option.isSome_iff_exists.mp hcheck
  obtain ⟨aout, haout, _⟩ := TreeBuckets.replayEvents_refines
    (TreeBuckets.empty_matches capacity) hout
  exact Option.isSome_iff_exists.mpr ⟨aout, haout⟩

theorem checkTreeBucketEvents_sound {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {capacity : ℕ} {events : List BucketEvent}
    (hcheck : checkTreeBucketEvents squarefreeCheck capacity events = true) :
    PrefixBounds (eventVertices events) :=
  checkBucketEvents_sound hsf (checkTreeBucketEvents_refines hcheck)

theorem upper_bounds_of_tree_bucket_certificate {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {M capacity : ℕ} {cert : List DiagonalCertificateEntry} {events : List BucketEvent}
    (hdiag : checkDiagonalCertificate M cert = true)
    (hevents : checkTreeBucketEvents squarefreeCheck capacity events = true)
    (hcover : ∀ a ∈ diagonalSieve M (diagonalRootsFrom 5 cert), a ∈ eventVertices events) :
    ∀ N ≤ M, ∀ A, Admissible N A → A.card ≤ optimum N :=
  upper_bounds_of_bucket_certificate hsf hdiag (checkTreeBucketEvents_refines hevents) hcover

end JSP848
