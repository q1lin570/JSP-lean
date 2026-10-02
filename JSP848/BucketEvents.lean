import JSP848.BucketRecoloring
import JSP848.SieveCertificate

namespace JSP848

structure BucketEvent where
  vertex : ℕ
  moves : List BucketMove
  deriving DecidableEq, Repr

def eventVertices (events : List BucketEvent) : Set ℕ :=
  {v | ∃ e ∈ events, e.vertex = v}

def PrefixBounds (seen : Set ℕ) : Prop :=
  ∀ N (A : Finset ℕ), (∀ a ∈ A, a ∈ seen) → Admissible N A → A.card ≤ optimum N

namespace ColorBuckets

/-- `seen` is proof-only state and is not computed by the certificate evaluator. -/
def EventInvariant (s : ColorBuckets) (k : ℕ) (seen : Set ℕ) : Prop :=
  s.Valid ∧ (∀ a ∈ seen, s.CoversVertex k a) ∧ PrefixBounds seen

theorem empty_eventInvariant (capacity : ℕ) : (empty capacity).EventInvariant 0 ∅ := by
  refine ⟨empty_valid capacity, ?_, ?_⟩
  · intro a ha
    exact ha.elim
  · intro N A hsub _
    have hA : A = ∅ := Finset.eq_empty_of_forall_notMem (fun a ha => hsub a ha)
    simp [hA]

def checkEvent (squarefreeCheck : ℕ → Bool) (k : ℕ) (s : ColorBuckets)
    (e : BucketEvent) : Option ColorBuckets :=
  if k ≤ optimum e.vertex ∧ e.moves.any (fun m => m.vertex == e.vertex) = true
  then recolor squarefreeCheck (optimum e.vertex) s e.moves else none

theorem checkEvent_spec {squarefreeCheck : ℕ → Bool} {k : ℕ}
    {s out : ColorBuckets} {e : BucketEvent}
    (h : checkEvent squarefreeCheck k s e = some out) :
    k ≤ optimum e.vertex ∧ (∃ m ∈ e.moves, m.vertex = e.vertex) ∧
      recolor squarefreeCheck (optimum e.vertex) s e.moves = some out := by
  unfold checkEvent at h
  split at h
  · rename_i hc
    refine ⟨hc.1, ?_, h⟩
    simpa only [List.any_eq_true, beq_iff_eq] using hc.2
  · cases h

theorem checkEvent_sound {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {k : ℕ} {s out : ColorBuckets} {seen : Set ℕ} {e : BucketEvent}
    (hs : s.EventInvariant k seen) (hcheck : checkEvent squarefreeCheck k s e = some out) :
    out.EventInvariant (optimum e.vertex) (insert e.vertex seen) := by
  obtain ⟨hkl, ⟨m, hm, hmv⟩, hr⟩ := checkEvent_spec hcheck
  have hout := recolor_sound hsf hs.1 hkl hr
  have hnew : out.CoversVertex (optimum e.vertex) e.vertex := by
    simpa only [hmv] using hout.2.2 m hm
  have hcover : ∀ a ∈ insert e.vertex seen, out.CoversVertex (optimum e.vertex) a := by
    intro a ha
    rcases Set.mem_insert_iff.mp ha with rfl | ha
    · exact hnew
    · exact hout.2.1 a (hs.2.1 a ha)
  refine ⟨hout.1, hcover, ?_⟩
  intro N A hsub hA
  by_cases he : e.vertex ∈ A
  · have hc := card_le_of_vertex_cover hout.1 (fun a ha => hcover a (hsub a ha)) hA.2
    have hvN := (Finset.mem_Icc.mp (hA.1 he)).2
    exact hc.trans (Nat.div_le_div_right (Nat.add_le_add_right hvN 18))
  · apply hs.2.2 N A _ hA
    intro a ha
    rcases Set.mem_insert_iff.mp (hsub a ha) with h | h
    · subst a
      exact (he ha).elim
    · exact h

def replayEvents (squarefreeCheck : ℕ → Bool) (k : ℕ) (s : ColorBuckets) :
    List BucketEvent → Option ColorBuckets
  | [] => some s
  | e :: rest =>
    match checkEvent squarefreeCheck k s e with
    | none => none
    | some next => replayEvents squarefreeCheck (optimum e.vertex) next rest

theorem replayEvents_sound {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {k : ℕ} {s out : ColorBuckets} {seen : Set ℕ} {events : List BucketEvent}
    (hs : s.EventInvariant k seen)
    (hcheck : replayEvents squarefreeCheck k s events = some out) :
    ∃ l, out.EventInvariant l (seen ∪ eventVertices events) := by
  induction events generalizing k s seen with
  | nil =>
    have heq : s = out := Option.some.inj hcheck
    subst out
    exact ⟨k, by simpa [eventVertices] using hs⟩
  | cons e rest ih =>
    cases hstep : checkEvent squarefreeCheck k s e with
    | none => simp [replayEvents, hstep] at hcheck
    | some next =>
      have hrest : replayEvents squarefreeCheck (optimum e.vertex) next rest = some out := by
        simpa only [replayEvents, hstep] using hcheck
      obtain ⟨l, hl⟩ := ih (checkEvent_sound hsf hs hstep) hrest
      have heq : insert e.vertex seen ∪ eventVertices rest =
          seen ∪ eventVertices (e :: rest) := by
        ext a
        simp [eventVertices, or_left_comm, or_assoc]
        simp only [eq_comm]
      exact ⟨l, heq ▸ hl⟩

end ColorBuckets

def checkBucketEvents (squarefreeCheck : ℕ → Bool) (capacity : ℕ)
    (events : List BucketEvent) : Bool :=
  (ColorBuckets.replayEvents squarefreeCheck 0 (ColorBuckets.empty capacity) events).isSome

theorem checkBucketEvents_sound {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {capacity : ℕ} {events : List BucketEvent}
    (hcheck : checkBucketEvents squarefreeCheck capacity events = true) :
    PrefixBounds (eventVertices events) := by
  obtain ⟨out, hout⟩ := Option.isSome_iff_exists.mp hcheck
  obtain ⟨l, hl⟩ := ColorBuckets.replayEvents_sound hsf
    (ColorBuckets.empty_eventInvariant capacity) hout
  simpa only [Set.empty_union] using hl.2.2

/-- Coverage remains explicit until the generated diagonal list is checked against the events. -/
theorem upper_bounds_of_bucket_certificate {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {M capacity : ℕ} {cert : List DiagonalCertificateEntry} {events : List BucketEvent}
    (hdiag : checkDiagonalCertificate M cert = true)
    (hevents : checkBucketEvents squarefreeCheck capacity events = true)
    (hcover : ∀ a ∈ diagonalSieve M (diagonalRootsFrom 5 cert), a ∈ eventVertices events) :
    ∀ N ≤ M, ∀ A, Admissible N A → A.card ≤ optimum N := by
  intro N hNM A hA
  apply checkBucketEvents_sound hsf hevents N A _ hA
  intro a ha
  exact hcover a ((mem_checkedDiagonalSieve_iff hdiag).mpr
    (admissible_subset_candidates (admissible_mono hA hNM) ha))

end JSP848
