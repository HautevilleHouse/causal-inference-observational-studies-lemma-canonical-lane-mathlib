import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure ObservationalBaselinePackage where
  studyPopulation : Type u
  samplingDesign : Prop
  measurementError : Prop
  missingDataMechanism : Prop
  positivityAssumption : Prop
  positivityAssumptionTerm : positivityAssumption

structure ObservationalBaselineEvidence (B : ObservationalBaselinePackage) where
  positivityAssumptionClosed : B.positivityAssumption

def ObservationalBaselineClosed (B : ObservationalBaselinePackage) : Prop :=
  B.positivityAssumption

theorem observational_baseline_closed_from_evidence (B : ObservationalBaselinePackage)
    (E : ObservationalBaselineEvidence B) : ObservationalBaselineClosed B := by
  exact E.positivityAssumptionClosed

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
