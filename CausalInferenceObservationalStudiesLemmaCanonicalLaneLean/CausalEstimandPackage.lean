import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure CausalEstimandPackage where
  targetEstimand : Prop
  ateDefined : Prop
  attDefined : Prop
  conditionalEffectDefined : Prop

structure CausalEstimandEvidence (P : CausalEstimandPackage) where
  ateDefinedClosed : P.ateDefined
  attDefinedClosed : P.attDefined
  conditionalEffectDefinedClosed : P.conditionalEffectDefined

def CausalEstimandClosed (P : CausalEstimandPackage) : Prop :=
  P.ateDefined ∧ P.attDefined ∧ P.conditionalEffectDefined

theorem causal_estimand_closed_from_evidence (P : CausalEstimandPackage)
    (E : CausalEstimandEvidence P) : CausalEstimandClosed P := by
  exact And.intro E.ateDefinedClosed (And.intro E.attDefinedClosed E.conditionalEffectDefinedClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
