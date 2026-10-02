import JSP848.CertificateInput
import JSP848.PrimeCountCertificate

namespace JSP848.PrimeCountInput

open Lean

def hints (input : Json) (maximum start base step : Nat) : Except String (List Nat) := do
  let data ← CertificateInput.entries input "prime_count" maximum start
  unless (← input.getObjValAs? Nat "base") == base do throw "prime-count base mismatch"
  unless (← input.getObjValAs? Nat "step") == step do throw "prime-count step mismatch"
  return (← data.mapM Json.getNat?).toList

open Lean Elab Term Meta

private def fromExcept (result : Except String α) : TermElabM α :=
  match result with
  | .ok value => pure value
  | .error message => throwError "{message}"

/-- The importer emits only natural-number literals; every exclusion is checked in Lean. -/
elab "primeHintChunk%" path:str maximum:num start:num base:num step:num : term => do
  let source := System.FilePath.mk (← readThe Core.Context).fileName
  let some directory := source.parent | throwError "source file has no parent directory"
  let content ← IO.FS.readFile (directory / path.getString)
  let input ← fromExcept (Json.parse content)
  let values ← fromExcept (hints input maximum.getNat start.getNat base.getNat step.getNat)
  mkListLit (mkConst ``Nat) (values.map mkNatLit)

end JSP848.PrimeCountInput
