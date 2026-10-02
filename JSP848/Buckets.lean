import JSP848.Coloring
import Mathlib.Data.Array.Defs

namespace JSP848

abbrev ColorBuckets := Array (List ℕ)

namespace ColorBuckets

def members (s : ColorBuckets) (c : ℕ) : List ℕ := s[c]?.getD []

def Valid (s : ColorBuckets) : Prop :=
  ∀ c a, a ∈ s.members c → ∀ b, b ∈ s.members c →
    a = b ∨ Squarefree (a * b + 1)

def CoversVertex (s : ColorBuckets) (k v : ℕ) : Prop :=
  ∃ c < k, v ∈ s.members c

theorem CoversVertex.mono {s : ColorBuckets} {k l v : ℕ}
    (h : s.CoversVertex k v) (hkl : k ≤ l) : s.CoversVertex l v := by
  obtain ⟨c, hc, hv⟩ := h
  exact ⟨c, hc.trans_le hkl, hv⟩

def empty (capacity : ℕ) : ColorBuckets := Array.replicate capacity []

@[simp] theorem members_empty (capacity c : ℕ) : (empty capacity).members c = [] := by
  simp only [empty, members, Array.getElem?_replicate]
  split <;> rfl

theorem empty_valid (capacity : ℕ) : (empty capacity).Valid := by
  intro c a ha
  simp at ha

/-- Removal is local; an out-of-bounds old-color hint has no effect. -/
def remove (s : ColorBuckets) (v c : ℕ) : ColorBuckets :=
  s.modify c (fun xs => xs.filter (fun a => a != v))

theorem members_remove (s : ColorBuckets) (v c d : ℕ) :
    (s.remove v c).members d =
      if c = d then (s.members d).filter (fun a => a != v) else s.members d := by
  unfold remove members
  rw [Array.getElem?_modify]
  by_cases h : c = d
  · simp only [h, if_true]
    cases s[d]? <;> rfl
  · simp [h]

theorem remove_valid {s : ColorBuckets} (hs : s.Valid) (v c : ℕ) :
    (s.remove v c).Valid := by
  intro d a ha b hb
  rw [members_remove] at ha hb
  by_cases h : c = d
  · rw [if_pos h] at ha hb
    exact hs d a (List.mem_filter.mp ha).1 b (List.mem_filter.mp hb).1
  · rw [if_neg h] at ha hb
    exact hs d a ha b hb

theorem mem_remove_of_ne {s : ColorBuckets} {v c d a : ℕ}
    (ha : a ∈ s.members d) (hne : a ≠ v) : a ∈ (s.remove v c).members d := by
  rw [members_remove]
  split
  · exact List.mem_filter.mpr ⟨ha, by simpa using hne⟩
  · exact ha

def put (s : ColorBuckets) (v c : ℕ) : ColorBuckets :=
  s.setIfInBounds c (v :: s.members c)

theorem members_put {s : ColorBuckets} {v c : ℕ} (hc : c < s.size) (d : ℕ) :
    (s.put v c).members d = if c = d then v :: s.members d else s.members d := by
  unfold put members
  rw [Array.getElem?_setIfInBounds]
  by_cases h : c = d
  · subst d
    simp [hc]
  · simp [h]

theorem put_preserves_mem {s : ColorBuckets} {v c d a : ℕ}
    (hc : c < s.size) (ha : a ∈ s.members d) : a ∈ (s.put v c).members d := by
  rw [members_put hc]
  split
  · exact List.mem_cons_of_mem v ha
  · exact ha

theorem put_valid {s : ColorBuckets} {v c : ℕ} (hs : s.Valid) (hc : c < s.size)
    (hpairs : ∀ a ∈ s.members c, Squarefree (v * a + 1)) : (s.put v c).Valid := by
  intro d a ha b hb
  rw [members_put hc] at ha hb
  by_cases h : c = d
  · subst d
    simp only [if_true, List.mem_cons] at ha hb
    rcases ha with rfl | ha
    · rcases hb with rfl | hb
      · exact Or.inl rfl
      · exact Or.inr (hpairs b hb)
    · rcases hb with rfl | hb
      · exact Or.inr (by simpa only [Nat.mul_comm] using hpairs a ha)
      · exact hs c a ha b hb
  · rw [if_neg h] at ha hb
    exact hs d a ha b hb

/-- The squarefree checker can be replaced only together with its soundness proof. -/
def insertChecked (squarefreeCheck : ℕ → Bool) (k : ℕ) (s : ColorBuckets)
    (v c : ℕ) : Option ColorBuckets :=
  if c < k ∧ c < s.size ∧ (s.members c).all (fun a => squarefreeCheck (v * a + 1)) = true
  then some (s.put v c) else none

theorem insertChecked_spec {squarefreeCheck : ℕ → Bool} {k v c : ℕ}
    {s out : ColorBuckets} (h : insertChecked squarefreeCheck k s v c = some out) :
    c < k ∧ c < s.size ∧
      (∀ a ∈ s.members c, squarefreeCheck (v * a + 1) = true) ∧ out = s.put v c := by
  unfold insertChecked at h
  split at h
  · rename_i hc
    exact ⟨hc.1, hc.2.1, List.all_eq_true.mp hc.2.2, (Option.some.inj h).symm⟩
  · cases h

theorem insertChecked_sound {squarefreeCheck : ℕ → Bool}
    (hsf : ∀ n, squarefreeCheck n = true → Squarefree n)
    {k v c : ℕ} {s out : ColorBuckets} (hs : s.Valid)
    (h : insertChecked squarefreeCheck k s v c = some out) :
    out.Valid ∧ (∀ d a, a ∈ s.members d → a ∈ out.members d) ∧ out.CoversVertex k v := by
  obtain ⟨hck, hcs, hpairs, rfl⟩ := insertChecked_spec h
  refine ⟨put_valid hs hcs (fun a ha => hsf _ (hpairs a ha)), ?_, ?_⟩
  · intro d a ha
    exact put_preserves_mem hcs ha
  · exact ⟨c, hck, by simp [members_put hcs]⟩

theorem exists_validColoring {N k : ℕ} {s : ColorBuckets} (hs : s.Valid)
    (hcover : ∀ a ∈ diagonalCandidates N, s.CoversVertex k a) :
    ∃ color, ValidColoring N k color := by
  classical
  let color (a : ℕ) : ℕ :=
    if ha : a ∈ diagonalCandidates N then (hcover a ha).choose else 0
  have hcolor {a : ℕ} (ha : a ∈ diagonalCandidates N) :
      color a < k ∧ a ∈ s.members (color a) := by
    simp only [color, dif_pos ha]
    exact (hcover a ha).choose_spec
  refine ⟨color, ?_, ?_⟩
  · intro a ha
    exact (hcolor ha).1
  · intro a ha b hb hab
    have hb' : b ∈ s.members (color a) := by
      rw [hab]
      exact (hcolor hb).2
    exact hs (color a) a (hcolor ha).2 b hb'

theorem card_le_of_cover {N k : ℕ} {s : ColorBuckets} (hs : s.Valid)
    (hcover : ∀ a ∈ diagonalCandidates N, s.CoversVertex k a)
    {A : Finset ℕ} (hA : Admissible N A) : A.card ≤ k := by
  obtain ⟨color, hc⟩ := exists_validColoring hs hcover
  exact card_le_of_validColoring hc hA

theorem card_le_of_vertex_cover {k : ℕ} {s : ColorBuckets} {A : Finset ℕ}
    (hs : s.Valid) (hcover : ∀ a ∈ A, s.CoversVertex k a) (hA : ProductCondition A) :
    A.card ≤ k := by
  classical
  let color (a : ℕ) : ℕ := if ha : a ∈ A then (hcover a ha).choose else 0
  have hcolor {a : ℕ} (ha : a ∈ A) : color a < k ∧ a ∈ s.members (color a) := by
    simp only [color, dif_pos ha]
    exact (hcover a ha).choose_spec
  calc
    A.card ≤ (Finset.range k).card := by
      apply Finset.card_le_card_of_injOn color
      · intro a ha
        exact Finset.mem_range.mpr (hcolor ha).1
      · intro a ha b hb hab
        have hb' : b ∈ s.members (color a) := by
          rw [hab]
          exact (hcolor hb).2
        rcases hs (color a) a (hcolor ha).2 b hb' with heq | hsq
        · exact heq
        · exact False.elim (hA a ha b hb hsq)
    _ = k := Finset.card_range k

end ColorBuckets

end JSP848
