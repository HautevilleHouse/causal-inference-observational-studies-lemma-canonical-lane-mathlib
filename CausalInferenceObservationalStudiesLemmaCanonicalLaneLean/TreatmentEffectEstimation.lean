import HautevilleHouse.CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure TreatmentEffectPackage where
  averageTreatmentEffect : Prop
  conditionalAverageTreatmentEffect : Prop
  identificationStrategy : Prop
  overlapAssumption : Prop

structure TreatmentEffectEvidence (P : TreatmentEffectPackage) where
  averageTreatmentEffectClosed : P.averageTreatmentEffect
  conditionalAverageTreatmentEffectClosed : P.conditionalAverageTreatmentEffect
  identificationStrategyClosed : P.identificationStrategy
  overlapAssumptionClosed : P.overlapAssumption

def TreatmentEffectPackageClosed (P : TreatmentEffectPackage) : Prop :=
  P.averageTreatmentEffect ∧ P.conditionalAverageTreatmentEffect ∧ P.identificationStrategy ∧ P.overlapAssumption

theorem treatment_effect_package_closed_from_evidence (P : TreatmentEffectPackage) (E : TreatmentEffectEvidence P) : TreatmentEffectPackageClosed P := by
  exact And.intro E.averageTreatmentEffectClosed
    (And.intro E.conditionalAverageTreatmentEffectClosed
      (And.intro E.identificationStrategyClosed E.overlapAssumptionClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse