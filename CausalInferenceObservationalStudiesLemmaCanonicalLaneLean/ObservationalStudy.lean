import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.CausalModel

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure ObservationalStudyPackage (M : CausalModelProgram) where
  sampleSize : Nat
  exchangeability : Prop
  positivityInSample : Prop
  noMeasurementError : Prop

structure ObservationalStudyEvidence {M : CausalModelProgram} (S : ObservationalStudyPackage M) where
  exchangeabilityClosed : S.exchangeability
  positivityInSampleClosed : S.positivityInSample
  noMeasurementErrorClosed : S.noMeasurementError

def ObservationalStudyClosed {M : CausalModelProgram} (S : ObservationalStudyPackage M) : Prop :=
  S.exchangeability ∧ S.positivityInSample ∧ S.noMeasurementError

theorem observational_study_closed_from_evidence {M : CausalModelProgram} (S : ObservationalStudyPackage M) (E : ObservationalStudyEvidence S) :
    ObservationalStudyClosed S := by
  exact And.intro E.exchangeabilityClosed (And.intro E.positivityInSampleClosed E.noMeasurementErrorClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse