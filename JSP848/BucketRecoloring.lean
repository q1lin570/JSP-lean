import JSP848.Buckets

namespace JSP848

structure BucketMove where
  vertex : ℕ
  oldColor : ℕ
  newColor : ℕ
  deriving DecidableEq, Repr

namespace ColorBuckets

def clearMoves (s : ColorBuckets) : List BucketMove → ColorBuckets
  | [] => s
  | m :: rest => clearMoves (s.remove m.vertex m.oldColor) rest

theorem clearMoves_valid {s : ColorBuckets} (hs : s.Valid) (moves : List BucketMove) :
    (s.clearMoves moves).Valid := by
  induction moves generalizing s with
  | nil => exact hs
  | cons m rest ih => exact ih (remove_valid hs m.vertex m.oldColor)

theorem clearMoves_preserves_other {s : ColorBuckets} {moves : List BucketMove}
    {c a : ℕ} (ha : a ∈ s.members c) (hother : ∀ m ∈ moves, a ≠ m.vertex) :
    a ∈ (s.clearMoves moves).members c := by
  induction moves generalizing s with
  | nil => exact ha
  | cons m rest ih =>
    apply ih (mem_remove_of_ne ha (hother m (by simp)))
    intro m' hm'
    exact hother m' (List.mem_cons_of_mem m hm')

def insertMoves (squarefreeCheck : ℕ → Bool) (k : ℕ) (s : ColorBuckets) :
    List BucketMove → Option ColorBuckets
  | [] => some s
  | m :: rest =>
    match insertChecked squarefreeCheck k s m.vertex m.newColor with
    | none => none
    | some next => insertMoves squarefreeCheck k next rest

theorem insertMoves_sound {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {k : ℕ} {s out : ColorBuckets} {moves : List BucketMove} (hs : s.Valid)
    (hcheck : insertMoves squarefreeCheck k s moves = some out) :
    out.Valid ∧ (∀ c a, a ∈ s.members c → a ∈ out.members c) ∧
      ∀ m ∈ moves, out.CoversVertex k m.vertex := by
  induction moves generalizing s with
  | nil =>
    have heq : s = out := Option.some.inj hcheck
    subst out
    exact ⟨hs, fun _ _ ha => ha, by simp⟩
  | cons m rest ih =>
    cases hstep : insertChecked squarefreeCheck k s m.vertex m.newColor with
    | none => simp [insertMoves, hstep] at hcheck
    | some next =>
      have hrest : insertMoves squarefreeCheck k next rest = some out := by
        simpa only [insertMoves, hstep] using hcheck
      have hn := insertChecked_sound hsf hs hstep
      have hout := ih hn.1 hrest
      refine ⟨hout.1, ?_, ?_⟩
      · intro c a ha
        exact hout.2.1 c a (hn.2.1 c a ha)
      · intro m' hm'
        rcases List.mem_cons.mp hm' with rfl | hm'
        · obtain ⟨c, hc, hv⟩ := hn.2.2
          exact ⟨c, hc, hout.2.1 c _ hv⟩
        · exact hout.2.2 m' hm'

/-- Clearing the entire batch first permits genuine simultaneous recoloring. -/
def recolor (squarefreeCheck : ℕ → Bool) (k : ℕ) (s : ColorBuckets)
    (moves : List BucketMove) : Option ColorBuckets :=
  insertMoves squarefreeCheck k (s.clearMoves moves) moves

theorem recolor_sound {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {k l : ℕ} {s out : ColorBuckets} {moves : List BucketMove}
    (hs : s.Valid) (hkl : k ≤ l) (hcheck : recolor squarefreeCheck l s moves = some out) :
    out.Valid ∧ (∀ v, s.CoversVertex k v → out.CoversVertex l v) ∧
      ∀ m ∈ moves, out.CoversVertex l m.vertex := by
  classical
  have hi := insertMoves_sound hsf (clearMoves_valid hs moves) hcheck
  refine ⟨hi.1, ?_, hi.2.2⟩
  intro v hv
  by_cases hm : ∃ m ∈ moves, m.vertex = v
  · obtain ⟨m, hm, heq⟩ := hm
    simpa only [heq] using hi.2.2 m hm
  · obtain ⟨c, hc, hv⟩ := hv
    refine ⟨c, hc.trans_le hkl, hi.2.1 c v (clearMoves_preserves_other hv ?_)⟩
    intro m hm' heq
    exact hm ⟨m, hm', heq.symm⟩

end ColorBuckets

end JSP848
