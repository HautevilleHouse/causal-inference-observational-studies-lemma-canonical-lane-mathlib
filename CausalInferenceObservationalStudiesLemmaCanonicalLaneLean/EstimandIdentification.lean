import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure EstimandIdentificationPackage where
  targetEstimand : (population → ℝ) → ℝ
  identifyingFormula : (population → ℝ) → ℝ
  identificationResult : targetEstimand = identifyingFormula

def EstimandIdentificationClosed (E : EstimandIdentificationPackage) : Prop :=
  E.identificationResult

theorem estimand_identification_closed (E : EstimandIdentificationPackage) : EstimandIdentificationClosed E := by
  exact E.identificationResult

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
