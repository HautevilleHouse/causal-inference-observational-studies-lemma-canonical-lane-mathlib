import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure IdentificationPackage where
  ignorabilityAssumption : Prop
  positivityAssumption : Prop
  backdoorCriterion : Prop
  noUnmeasuredConfounding : Prop

structure IdentificationEvidence (I : IdentificationPackage) where
  ignorabilityAssumptionClosed : I.ignorabilityAssumption
  positivityAssumptionClosed : I.positivityAssumption
  backdoorCriterionClosed : I.backdoorCriterion
  noUnmeasuredConfoundingClosed : I.noUnmeasuredConfounding

def IdentificationClosed (I : IdentificationPackage) : Prop :=
  I.ignorabilityAssumption ∧ I.positivityAssumption ∧
  I.backdoorCriterion ∧ I.noUnmeasuredConfounding

theorem identification_closed_from_evidence (I : IdentificationPackage)
    (E : IdentificationEvidence I) : IdentificationClosed I := by
  exact And.intro E.ignorabilityAssumptionClosed
    (And.intro E.positivityAssumptionClosed
      (And.intro E.backdoorCriterionClosed E.noUnmeasuredConfoundingClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
