import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.ObservationalStudyDesign
import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.PropensityScoreMethods
import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.InstrumentalVariableMethods

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure IdentificationPackage {O : ObservationalStudyDesign}
    {P : PropensityScorePackage} {I : InstrumentalVariablePackage} where
  averageTreatmentEffectIdentified : Prop
  conditionalAverageTreatmentEffectIdentified : Prop
  localAverageTreatmentEffectIdentified : Prop
  identificationStrategyConsistent : Prop

structure IdentificationEvidence {O : ObservationalStudyDesign}
    {P : PropensityScorePackage} {I : InstrumentalVariablePackage}
    (Id : IdentificationPackage O P I) where
  averageTreatmentEffectIdentifiedClosed : Id.averageTreatmentEffectIdentified
  conditionalAverageTreatmentEffectIdentifiedClosed : Id.conditionalAverageTreatmentEffectIdentified
  localAverageTreatmentEffectIdentifiedClosed : Id.localAverageTreatmentEffectIdentified
  identificationStrategyConsistentClosed : Id.identificationStrategyConsistent

def IdentificationClosed {O : ObservationalStudyDesign}
    {P : PropensityScorePackage} {I : InstrumentalVariablePackage}
    (Id : IdentificationPackage O P I) : Prop :=
  Id.averageTreatmentEffectIdentified ∧ Id.conditionalAverageTreatmentEffectIdentified ∧
  Id.localAverageTreatmentEffectIdentified ∧ Id.identificationStrategyConsistent

theorem identification_closed_from_evidence
    {O : ObservationalStudyDesign} {P : PropensityScorePackage} {I : InstrumentalVariablePackage}
    (Id : IdentificationPackage O P I) (E : IdentificationEvidence Id) :
    IdentificationClosed Id := by
  exact And.intro E.averageTreatmentEffectIdentifiedClosed
    (And.intro E.conditionalAverageTreatmentEffectIdentifiedClosed
      (And.intro E.localAverageTreatmentEffectIdentifiedClosed
        E.identificationStrategyConsistentClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse