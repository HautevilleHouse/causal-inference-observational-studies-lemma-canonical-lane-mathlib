import HautevilleHouse.CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.ConfoundingControl

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure IdentificationStrategyPackage {C : ConfoundingControlPackage} where
  backdoorCriterion : Prop
  frontdoorCriterion : Prop
  instrumentalVariable : Prop

def IdentificationStrategyClosed {C : ConfoundingControlPackage} (I : IdentificationStrategyPackage C) : Prop :=
  I.backdoorCriterion ∧ I.frontdoorCriterion ∧ I.instrumentalVariable

structure IdentificationStrategyEvidence {C : ConfoundingControlPackage} (I : IdentificationStrategyPackage C) where
  backdoorCriterionClosed : I.backdoorCriterion
  frontdoorCriterionClosed : I.frontdoorCriterion
  instrumentalVariableClosed : I.instrumentalVariable

theorem identification_strategy_closed_from_evidence {C : ConfoundingControlPackage}
    (I : IdentificationStrategyPackage C) (E : IdentificationStrategyEvidence I) :
    IdentificationStrategyClosed I := by
  exact And.intro E.backdoorCriterionClosed (And.intro E.frontdoorCriterionClosed E.instrumentalVariableClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse