import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure CausalAdmittedObject where
  pop : Type
  observedData : pop → Type
  treatment : pop → Prop
  outcome : pop → Prop
  confoundingVars : pop → Type
  identificationAssumption : Prop
  conclusion : identificationAssumption

structure CausalAdmissibleClass where
  object : CausalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CausalAdmissibleClass) : Prop :=
  A.object.identificationAssumption ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse