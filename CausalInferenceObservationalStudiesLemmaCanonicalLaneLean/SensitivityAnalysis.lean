import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure SensitivityAnalysisPackage where
  unmeasuredConfoundingBounds : Prop
  eValue : Prop
  robustnessToViolations : Prop
  eValueComputed : Prop
  eValueComputedTerm : eValueComputed

structure SensitivityAnalysisEvidence (S : SensitivityAnalysisPackage) where
  eValueComputedClosed : S.eValueComputed

def SensitivityAnalysisClosed (S : SensitivityAnalysisPackage) : Prop :=
  S.eValueComputed

theorem sensitivity_analysis_closed_from_evidence (S : SensitivityAnalysisPackage)
    (E : SensitivityAnalysisEvidence S) : SensitivityAnalysisClosed S := by
  exact E.eValueComputedClosed

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
