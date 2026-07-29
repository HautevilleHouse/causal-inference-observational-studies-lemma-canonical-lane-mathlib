import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.BridgeLemmas
import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

def ConstrainedCausalInferenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_causal_inference_endgame (A : AdmissibleClass) :
    ConstrainedCausalInferenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
