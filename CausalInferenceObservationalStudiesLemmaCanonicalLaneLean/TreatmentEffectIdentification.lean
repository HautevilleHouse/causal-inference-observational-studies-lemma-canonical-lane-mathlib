import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.ConfoundingBias
import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.PropensityScore

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure TreatmentEffectIdentifiability where
  averageTreatmentEffect : Type u
  conditionalAverageTreatmentEffect : Type u
  identificationViaAdjustment : Prop
  identificationViaInstrument : Prop

structure TreatmentEffectIdentificationEvidence (T : TreatmentEffectIdentifiability) where
  identificationViaAdjustmentClosed : T.identificationViaAdjustment
  identificationViaInstrumentClosed : T.identificationViaInstrument

def TreatmentEffectIdentified (T : TreatmentEffectIdentifiability) : Prop :=
  T.identificationViaAdjustment ∧ T.identificationViaInstrument

theorem treatment_effect_identified_from_evidence
    (T : TreatmentEffectIdentifiability) (E : TreatmentEffectIdentificationEvidence T) :
    TreatmentEffectIdentified T := by
  exact And.intro E.identificationViaAdjustmentClosed E.identificationViaInstrumentClosed

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
