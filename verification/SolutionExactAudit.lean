import JSP848.Solution
import Lean.Util.CollectAxioms

open Lean Elab Command in
run_cmd do
  let allowed := #[``propext, ``Classical.choice, ``Quot.sound]
  let declaration := ``JSP848.solution
  let env <- getEnv
  unless (env.checked.get.find? declaration).isSome do
    throwError "Missing checked target {declaration}"
  let (_, result) := (CollectAxioms.collect declaration).run env |>.run {}
  for dependency in result.axioms do
    unless allowed.contains dependency do
      throwError "Unexpected transitive axiom {dependency}"
  logInfo m!"Axiom whitelist passed for {declaration}. Axioms: {result.axioms}"
