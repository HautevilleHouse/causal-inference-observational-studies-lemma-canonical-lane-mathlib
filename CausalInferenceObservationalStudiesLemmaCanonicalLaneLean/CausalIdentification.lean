import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure CausalIdentificationMethod where
  identificationStrategy : Prop
  causalEffect : Prop
  identificationAssumptions : Prop

structure CausalIdentificationEvidence (M : CausalIdentificationMethod) where
  identificationStrategyClosed : M.identificationStrategy
  causalEffectClosed : M.causalEffect
  identificationAssumptionsClosed : M.identificationAssumptions

def CausalIdentificationClosed (M : CausalIdentificationMethod) : Prop :=
  M.identificationStrategy ∧ M.causalEffect ∧ M.identificationAssumptions

theorem causal_identification_closed_from_evidence
    (M : CausalIdentificationMethod) (E : CausalIdentificationEvidence M) :
    CausalIdentificationClosed M := by
  exact And.intro E.identificationStrategyClosed
    (And.intro E.causalEffectClosed E.identificationAssumptionsClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
