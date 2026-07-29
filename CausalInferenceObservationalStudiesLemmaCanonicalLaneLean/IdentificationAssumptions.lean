import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure IdentificationAssumptionsPackage where
  consistencyAssumption : Prop
  exchangeabilityAssumption : Prop
  positivityAssumption : Prop
  noMultipleVersionsOfTreatment : Prop

structure IdentificationAssumptionsEvidence (I : IdentificationAssumptionsPackage) where
  consistencyAssumptionClosed : I.consistencyAssumption
  exchangeabilityAssumptionClosed : I.exchangeabilityAssumption
  positivityAssumptionClosed : I.positivityAssumption
  noMultipleVersionsOfTreatmentClosed : I.noMultipleVersionsOfTreatment

def IdentificationAssumptionsClosed (I : IdentificationAssumptionsPackage) : Prop :=
  I.consistencyAssumption ∧ I.exchangeabilityAssumption ∧
  I.positivityAssumption ∧ I.noMultipleVersionsOfTreatment

theorem identification_assumptions_closed_from_evidence
    (I : IdentificationAssumptionsPackage)
    (E : IdentificationAssumptionsEvidence I) :
    IdentificationAssumptionsClosed I := by
  exact And.intro E.consistencyAssumptionClosed
    (And.intro E.exchangeabilityAssumptionClosed
      (And.intro E.positivityAssumptionClosed E.noMultipleVersionsOfTreatmentClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
