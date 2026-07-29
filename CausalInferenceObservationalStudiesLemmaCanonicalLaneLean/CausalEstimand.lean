import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure CausalEstimandPackage where
  averageTreatmentEffect : Prop
  conditionalAverageTreatmentEffect : Prop
  marginalStructuralModel : Prop
  gFormula : Prop
  inverseProbabilityWeighting : Prop
  positivityAndConsistency : Prop
  positivityAndConsistencyTerm : positivityAndConsistency

structure CausalEstimandEvidence (E : CausalEstimandPackage) where
  positivityAndConsistencyClosed : E.positivityAndConsistency

def CausalEstimandClosed (E : CausalEstimandPackage) : Prop :=
  E.positivityAndConsistency

theorem causal_estimand_closed_from_evidence (E : CausalEstimandPackage)
    (Ev : CausalEstimandEvidence E) : CausalEstimandClosed E := by
  exact Ev.positivityAndConsistencyClosed

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
