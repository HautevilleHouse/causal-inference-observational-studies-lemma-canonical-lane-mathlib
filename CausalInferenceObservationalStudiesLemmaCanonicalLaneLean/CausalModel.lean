import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure CausalModelProgram where
  population : Type u
  treatment : Type v
  outcome : Type w
  causalGraph : Prop
  unmeasuredConfounding : Prop
  positivity : Prop
  consistency : Prop

structure CausalModelEvidence (M : CausalModelProgram) where
  causalGraphClosed : M.causalGraph
  unmeasuredConfoundingClosed : M.unmeasuredConfounding
  positivityClosed : M.positivity
  consistencyClosed : M.consistency

def CausalModelClosed (M : CausalModelProgram) : Prop :=
  M.causalGraph ∧ M.unmeasuredConfounding ∧ M.positivity ∧ M.consistency

theorem causal_model_closed_from_evidence (M : CausalModelProgram) (E : CausalModelEvidence M) :
    CausalModelClosed M := by
  exact And.intro E.causalGraphClosed (And.intro E.unmeasuredConfoundingClosed (And.intro E.positivityClosed E.consistencyClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse