import JSP848.ReplaySnapshot
import Lean

namespace JSP848.SnapshotInput

open Lean

/-- This parser returns data only; tree well-formedness is checked by replay. -/
partial def tree (value : Json → Except String α) (input : Json) :
    Except String (SnapshotTree α) := do
  match input with
  | .null => return .leaf
  | _ =>
    match (← input.getArr?).toList with
    | [size, key, v, left, right] =>
      return .inner (← size.getNat?) (← key.getNat?) (← value v)
        (← tree value left) (← tree value right)
    | _ => throw "snapshot node must have five fields"

def natList (input : Json) : Except String (List Nat) := do
  return (← (← input.getArr?).mapM Json.getNat?).toList

def unit (input : Json) : Except String Unit :=
  if input == .null then .ok () else .error "index value must be null"

def snapshot (input : Json) (maximum offset count : Nat) : Except String ReplaySnapshot := do
  unless (← input.getObjValAs? Nat "schema_version") == 1 do
    throw "unsupported snapshot schema"
  unless (← input.getObjValAs? String "kind") == "replay_snapshot" do
    throw "snapshot kind mismatch"
  unless (← input.getObjValAs? Nat "maximum_n") == maximum do
    throw "snapshot maximum mismatch"
  unless (← input.getObjValAs? Nat "offset") == offset do
    throw "snapshot offset mismatch"
  unless (← input.getObjValAs? Nat "count") == count do
    throw "snapshot count mismatch"
  return ⟨← input.getObjValAs? Nat "bound", ← input.getObjValAs? Nat "capacity",
    ← tree natList (← input.getObjVal? "buckets"), ← tree unit (← input.getObjVal? "index")⟩

open Lean Elab Term Meta

private def fromExcept (result : Except String α) : TermElabM α :=
  match result with
  | .ok value => pure value
  | .error message => throwError "{message}"

private def quoteTree (type : Expr) (value : α → TermElabM Expr) :
    SnapshotTree α → TermElabM Expr
  | .leaf => pure (mkApp2 (mkConst ``Std.DTreeMap.Internal.Impl.leaf [.zero, .zero])
      (mkConst ``Nat) (mkLambda `x .default (mkConst ``Nat) type))
  | .inner size key v left right => do
    return mkAppN (mkConst ``Std.DTreeMap.Internal.Impl.inner [.zero, .zero])
      #[(mkConst ``Nat), mkLambda `x .default (mkConst ``Nat) type,
        mkNatLit size, mkNatLit key, ← value v, ← quoteTree type value left,
        ← quoteTree type value right]

/-- Imported snapshots are raw constructor terms, never externally asserted proofs. -/
elab "replaySnapshot%" path:str maximum:num offset:num count:num : term => do
  let source := System.FilePath.mk (← readThe Core.Context).fileName
  let some directory := source.parent | throwError "source file has no parent directory"
  let input ← fromExcept (Json.parse (← IO.FS.readFile (directory / path.getString)))
  let data ← fromExcept (snapshot input maximum.getNat offset.getNat count.getNat)
  let buckets ← quoteTree (mkApp (mkConst ``List [.zero]) (mkConst ``Nat))
    (fun values => mkListLit (mkConst ``Nat) (values.map mkNatLit)) data.buckets
  let index ← quoteTree (mkConst ``Unit) (fun _ => pure (mkConst ``Unit.unit)) data.index
  return mkAppN (mkConst ``ReplaySnapshot.mk)
    #[mkNatLit data.bound, mkNatLit data.capacity, buckets, index]

end JSP848.SnapshotInput
