import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure ObservationalStudyDesign where
  targetPopulation : Type u
  treatmentAssignment : targetPopulation → Prop
  covariateSpace : Type v
  outcomeFunction : targetPopulation → covariateSpace → ℝ
  unmeasuredConfounding : Prop
  ignorabilityAssumption : Prop
  positivityAssumption : Prop
  consistencyAssumption : Prop

structure ObservationalStudyDesignEvidence (O : ObservationalStudyDesign) where
  ignorabilityAssumptionClosed : O.ignorabilityAssumption
  positivityAssumptionClosed : O.positivityAssumption
  consistencyAssumptionClosed : O.consistencyAssumption

def ObservationalStudyDesignClosed (O : ObservationalStudyDesign) : Prop :=
  O.ignorabilityAssumption ∧ O.positivityAssumption ∧ O.consistencyAssumption

theorem observational_study_design_closed_from_evidence
    (O : ObservationalStudyDesign) (E : ObservationalStudyDesignEvidence O) :
    ObservationalStudyDesignClosed O := by
  exact And.intro E.ignorabilityAssumptionClosed
    (And.intro E.positivityAssumptionClosed E.consistencyAssumptionClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse