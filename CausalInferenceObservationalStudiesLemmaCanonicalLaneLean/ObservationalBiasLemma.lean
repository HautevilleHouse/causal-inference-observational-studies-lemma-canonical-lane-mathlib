import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure ObservationalBiasPackage where
  selectionBias : Prop
  confoundingBias : Prop
  measurementError : Prop
  biasMagnitude : Prop

structure ObservationalBiasEvidence (B : ObservationalBiasPackage) where
  selectionBiasClosed : B.selectionBias
  confoundingBiasClosed : B.confoundingBias
  measurementErrorClosed : B.measurementError
  biasMagnitudeClosed : B.biasMagnitude

def ObservationalBiasClosed (B : ObservationalBiasPackage) : Prop :=
  B.selectionBias ∧ B.confoundingBias ∧ B.measurementError ∧ B.biasMagnitude

theorem observational_bias_closed_from_evidence
    (B : ObservationalBiasPackage) (E : ObservationalBiasEvidence B) :
    ObservationalBiasClosed B := by
  exact And.intro E.selectionBiasClosed
    (And.intro E.confoundingBiasClosed
      (And.intro E.measurementErrorClosed E.biasMagnitudeClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
