import JSP848.BucketEvents
import JSP848.SieveCertificate
import Lean

namespace JSP848.CertificateInput

open Lean

/-- Parsing rejects metadata mismatches; mathematical validity is checked separately. -/
def entries (input : Json) (kind : String) (maximum start : Nat) :
    Except String (Array Json) := do
  unless (← input.getObjValAs? Nat "schema_version") == 1 do
    throw "unsupported certificate schema"
  unless (← input.getObjValAs? String "kind") == kind do
    throw "certificate kind mismatch"
  unless (← input.getObjValAs? Nat "maximum_n") == maximum do
    throw "certificate maximum mismatch"
  unless (← input.getObjValAs? Nat "start") == start do
    throw "certificate start mismatch"
  (← input.getObjVal? "entries").getArr?

def move (input : Json) : Except String BucketMove := do
  match (← input.getArr?).toList with
  | [v, old, dest] => return ⟨← v.getNat?, ← old.getNat?, ← dest.getNat?⟩
  | _ => throw "move must contain vertex, old color, and new color"

def event (input : Json) : Except String BucketEvent := do
  match (← input.getArr?).toList with
  | [v, moves] => return ⟨← v.getNat?, (← (← moves.getArr?).mapM move).toList⟩
  | _ => throw "event must contain vertex and moves"

def diagonal (input : Json) : Except String DiagonalCertificateEntry := do
  match (← input.getArr?).toList with
  | [tag, value] =>
    match ← tag.getNat? with
    | 0 => return .root (← value.getNat?)
    | 1 => return .factor (← value.getNat?)
    | _ => throw "unknown diagonal entry tag"
  | _ => throw "diagonal entry must contain tag and value"

/-- Explicit slices are for profiling and regression, never implicit truncation. -/
def slice (values : Array α) (offset count : Nat) : Except String (Array α) := do
  unless offset + count ≤ values.size do throw "certificate slice out of bounds"
  return values.extract offset (offset + count)

open Lean Elab Term Meta

private def fromExcept (result : Except String α) : TermElabM α :=
  match result with
  | .ok value => pure value
  | .error message => throwError "{message}"

private def readEntries (path : String) (kind : String) (maximum start : Nat) :
    TermElabM (Array Json) := do
  let source := System.FilePath.mk (← readThe Core.Context).fileName
  let some directory := source.parent | throwError "source file has no parent directory"
  let content ← IO.FS.readFile (directory / path)
  let input ← fromExcept (Json.parse content)
  fromExcept (entries input kind maximum start)

private def quoteMove (m : BucketMove) : Expr :=
  mkAppN (mkConst ``BucketMove.mk) #[mkNatLit m.vertex, mkNatLit m.oldColor, mkNatLit m.newColor]

private def quoteEvents (input : Array Json) : TermElabM Expr := do
  let events ← fromExcept (input.mapM event)
  let expressions ← events.toList.mapM fun e => do
    let moves ← mkListLit (mkConst ``BucketMove) (e.moves.map quoteMove)
    return mkApp2 (mkConst ``BucketEvent.mk) (mkNatLit e.vertex) moves
  mkListLit (mkConst ``BucketEvent) expressions

private def quoteDiagonal (input : Array Json) : TermElabM Expr := do
  let values ← fromExcept (input.mapM diagonal)
  let expressions := values.toList.map fun e => match e with
    | .root r => mkApp (mkConst ``DiagonalCertificateEntry.root) (mkNatLit r)
    | .factor d => mkApp (mkConst ``DiagonalCertificateEntry.factor) (mkNatLit d)
  mkListLit (mkConst ``DiagonalCertificateEntry) expressions

/-- Only data constructors are emitted. No external assertion becomes a proof. -/
elab "eventChunk%" path:str maximum:num start:num : term => do
  quoteEvents (← readEntries path.getString "events" maximum.getNat start.getNat)

elab "eventSlice%" path:str maximum:num start:num offset:num count:num : term => do
  let values ← readEntries path.getString "events" maximum.getNat start.getNat
  quoteEvents (← fromExcept (slice values offset.getNat count.getNat))

elab "diagonalChunk%" path:str maximum:num start:num : term => do
  quoteDiagonal (← readEntries path.getString "diagonal" maximum.getNat start.getNat)

elab "diagonalSlice%" path:str maximum:num start:num offset:num count:num : term => do
  let values ← readEntries path.getString "diagonal" maximum.getNat start.getNat
  quoteDiagonal (← fromExcept (slice values offset.getNat count.getNat))

end JSP848.CertificateInput
