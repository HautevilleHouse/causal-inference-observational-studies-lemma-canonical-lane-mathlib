import HautevilleHouse.CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure ConfoundingControlPackage where
  measuredCovariates : Type u
  adjustmentSet : Prop
  unmeasuredConfounding : Prop
  positivityHolds : Prop

structure ConfoundingControlEvidence (P : ConfoundingControlPackage) where
  adjustmentSetClosed : P.adjustmentSet
  unmeasuredConfoundingClosed : P.unmeasuredConfounding
  positivityHoldsClosed : P.positivityHolds

def ConfoundingControlClosed (P : ConfoundingControlPackage) : Prop :=
  P.adjustmentSet ∧ P.unmeasuredConfounding ∧ P.positivityHolds

theorem confounding_control_closed_from_evidence (P : ConfoundingControlPackage)
    (E : ConfoundingControlEvidence P) : ConfoundingControlClosed P := by
  exact And.intro E.adjustmentSetClosed (And.intro E.unmeasuredConfoundingClosed E.positivityHoldsClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse