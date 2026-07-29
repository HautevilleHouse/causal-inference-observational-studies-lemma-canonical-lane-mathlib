import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure EndpointEvidencePackage where
  ateIdentified : Prop
  ateEstimated : Prop
  identificationEvidence : IdentificationEvidence (default : IdentificationPackage)
  estimatorEvidence : EstimatorEvidence (default : EstimatorPackage)

def EndpointEvidenceClosed (E : EndpointEvidencePackage) : Prop :=
  E.ateIdentified ∧ E.ateEstimated

theorem endpoint_evidence_closed_from_evidence (E : EndpointEvidencePackage)
    (hId : E.ateIdentified) (hEst : E.ateEstimated) : EndpointEvidenceClosed E := by
  exact And.intro hId hEst

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
