import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CausalStudySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CausalAdmittedObject where
  space : CausalStudySpace
  observationalStudy : Prop
  identificationAssumptions : Prop
  treatmentAssignment : Prop
  outcomeModel : Type
  estimandIdentified : Prop
  conclusion : estimandIdentified

structure CausalEndgameState where
  object : CausalAdmittedObject

def CausalWitnessClosed (O : CausalAdmittedObject) : Prop :=
  O.estimandIdentified

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
