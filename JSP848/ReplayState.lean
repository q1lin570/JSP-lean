import JSP848.FiniteCertificate

namespace JSP848

/-- The index is carried with the buckets so later chunks need no old event list. -/
structure ReplayState where
  bound : ℕ
  buckets : TreeBuckets
  index : Std.TreeMap ℕ Unit

namespace ReplayState

def seen (s : ReplayState) : Set ℕ := {v | s.index.contains v = true}

def Valid (s : ReplayState) : Prop :=
  ∃ a : ColorBuckets, s.buckets.Matches a ∧ a.EventInvariant s.bound s.seen

def empty (capacity : ℕ) : ReplayState := ⟨0, TreeBuckets.empty capacity, ∅⟩

theorem empty_valid (capacity : ℕ) : (empty capacity).Valid := by
  refine ⟨ColorBuckets.empty capacity, TreeBuckets.empty_matches capacity, ?_⟩
  have hs : (empty capacity).seen = ∅ := by ext v; simp [seen, empty]
  simpa only [hs] using ColorBuckets.empty_eventInvariant capacity

def stepWith (s : ReplayState) (squarefreeCheck : ℕ → Bool) (e : BucketEvent) : Option ReplayState :=
  (TreeBuckets.checkEvent squarefreeCheck s.bound s.buckets e).map
    (fun buckets => ⟨optimum e.vertex, buckets, s.index.insert e.vertex ()⟩)

theorem stepWith_valid {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {s out : ReplayState} {e : BucketEvent} (hs : s.Valid)
    (hstep : s.stepWith squarefreeCheck e = some out) : out.Valid := by
  obtain ⟨a, hm, ha⟩ := hs
  cases hb : TreeBuckets.checkEvent squarefreeCheck s.bound s.buckets e with
  | none => simp [stepWith, hb] at hstep
  | some buckets =>
    have heq : (⟨optimum e.vertex, buckets, s.index.insert e.vertex ()⟩ : ReplayState) = out := by
      simpa only [stepWith, hb, Option.map_some, Option.some.injEq] using hstep
    subst out
    obtain ⟨aout, hout, hmatch⟩ := TreeBuckets.checkEvent_refines hm hb
    have hinv := ColorBuckets.checkEvent_sound hsf ha hout
    refine ⟨aout, hmatch, ?_⟩
    have hseen : (⟨optimum e.vertex, buckets, s.index.insert e.vertex ()⟩ : ReplayState).seen =
        insert e.vertex s.seen := by
      ext v
      simp only [seen, Set.mem_setOf_eq, Std.TreeMap.contains_insert,
        Bool.or_eq_true, beq_iff_eq, Nat.compare_eq_eq, Set.mem_insert_iff]
      tauto
    simpa only [hseen] using hinv

def step (s : ReplayState) (e : BucketEvent) : Option ReplayState :=
  s.stepWith fastSquarefree e

theorem step_valid {s out : ReplayState} {e : BucketEvent} (hs : s.Valid)
    (hstep : s.step e = some out) : out.Valid :=
  stepWith_valid fastSquarefree_sound hs hstep

def runChunkWith (s : ReplayState) (squarefreeCheck : ℕ → Bool) : List BucketEvent → Option ReplayState
  | [] => some s
  | e :: rest => (s.stepWith squarefreeCheck e).bind (fun next => next.runChunkWith squarefreeCheck rest)

theorem runChunkWith_valid {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {s out : ReplayState} {events : List BucketEvent}
    (hs : s.Valid) (hcheck : s.runChunkWith squarefreeCheck events = some out) : out.Valid := by
  induction events generalizing s with
  | nil =>
    have heq : s = out := Option.some.inj hcheck
    exact heq ▸ hs
  | cons e rest ih =>
    cases hstep : s.stepWith squarefreeCheck e with
    | none => simp [runChunkWith, hstep] at hcheck
    | some next =>
      apply ih (stepWith_valid hsf hs hstep)
      simpa only [runChunkWith, hstep, Option.bind_some] using hcheck

theorem runChunkWith_append (s : ReplayState) (squarefreeCheck : ℕ → Bool) (xs ys : List BucketEvent) :
    s.runChunkWith squarefreeCheck (xs ++ ys) =
      (s.runChunkWith squarefreeCheck xs).bind (fun next => next.runChunkWith squarefreeCheck ys) := by
  induction xs generalizing s with
  | nil => rfl
  | cons e rest ih =>
    simp only [List.cons_append, runChunkWith]
    cases s.stepWith squarefreeCheck e with
    | none => rfl
    | some next => simpa only [Option.bind_some] using ih next

def runChunk (s : ReplayState) (events : List BucketEvent) : Option ReplayState :=
  s.runChunkWith fastSquarefree events

theorem runChunk_valid {s out : ReplayState} {events : List BucketEvent}
    (hs : s.Valid) (hcheck : s.runChunk events = some out) : out.Valid :=
  runChunkWith_valid fastSquarefree_sound hs hcheck

theorem runChunk_append (s : ReplayState) (xs ys : List BucketEvent) :
    s.runChunk (xs ++ ys) = (s.runChunk xs).bind (fun next => next.runChunk ys) :=
  runChunkWith_append s fastSquarefree xs ys

/-- Independently kernel-checked transitions can be composed without rechecking
the earlier event list. This theorem does not assert any concrete checkpoint. -/
theorem compose {s mid out : ReplayState} {xs ys : List BucketEvent}
    (hx : s.runChunk xs = some mid) (hy : mid.runChunk ys = some out) :
    s.runChunk (xs ++ ys) = some out := by
  rw [runChunk_append, hx, Option.bind_some, hy]

def checkCoverage (s : ReplayState) (M : ℕ) (cert : List DiagonalCertificateEntry) : Bool :=
  checkDiagonalCertificate M cert &&
    (diagonalSieve M (diagonalRootsFrom 5 cert)).all s.index.contains

theorem upper_bounds_of_coverage {s : ReplayState} (hs : s.Valid)
    {M : ℕ} {cert : List DiagonalCertificateEntry}
    (hcover : s.checkCoverage M cert = true) :
    ∀ N ≤ M, ∀ A, Admissible N A → A.card ≤ optimum N := by
  obtain ⟨a, _, ha⟩ := hs
  have hc := Bool.and_eq_true_iff.mp hcover
  intro N hNM A hA
  apply ha.2.2 N A _ hA
  intro v hv
  apply List.all_eq_true.mp hc.2 v
  exact (mem_checkedDiagonalSieve_iff hc.1).mpr
    (admissible_subset_candidates (admissible_mono hA hNM) hv)

theorem upper_bounds_of_chunk {capacity M : ℕ} {out : ReplayState}
    {events : List BucketEvent} {cert : List DiagonalCertificateEntry}
    (hcheck : (empty capacity).runChunk events = some out)
    (hcover : out.checkCoverage M cert = true) :
    ∀ N ≤ M, ∀ A, Admissible N A → A.card ≤ optimum N :=
  upper_bounds_of_coverage (runChunk_valid (empty_valid capacity) hcheck) hcover

end ReplayState

end JSP848
