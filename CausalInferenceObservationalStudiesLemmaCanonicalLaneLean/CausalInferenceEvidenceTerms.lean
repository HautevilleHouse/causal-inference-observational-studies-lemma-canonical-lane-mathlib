import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure CausalInferenceEvidenceTerms {O : ObservationalStudyDesign}
    {P : PropensityScorePackage} {I : InstrumentalVariablePackage}
    {Id : IdentificationPackage O P I} where
  designClosed : ObservationalStudyDesignClosed O
  propensityClosed : PropensityScoreClosed P
  instrumentClosed : InstrumentalVariableClosed I
  identificationClosed : IdentificationClosed Id

def CausalInferenceEvidenceTerms.closed {O : ObservationalStudyDesign}
    {P : PropensityScorePackage} {I : InstrumentalVariablePackage}
    {Id : IdentificationPackage O P I} (C : CausalInferenceEvidenceTerms O P I Id) : Prop :=
  C.designClosed ∧ C.propensityClosed ∧ C.instrumentClosed ∧ C.identificationClosed

theorem causal_inference_evidence_terms_closed_from_terms
    {O : ObservationalStudyDesign} {P : PropensityScorePackage} {I : InstrumentalVariablePackage}
    {Id : IdentificationPackage O P I} (C : CausalInferenceEvidenceTerms O P I Id) :
    CausalInferenceEvidenceTerms.closed C := by
  exact And.intro C.designClosed
    (And.intro C.propensityClosed (And.intro C.instrumentClosed C.identificationClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse