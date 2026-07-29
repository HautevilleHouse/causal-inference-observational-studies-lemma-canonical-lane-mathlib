import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.ObservationalStudy

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure IdentificationPackage {M : CausalModelProgram} {S : ObservationalStudyPackage M} where
  gFormula : Prop
  ipwFormula : Prop
  drFormula : Prop
  identificationConditions : Prop

structure IdentificationEvidence {M : CausalModelProgram} {S : ObservationalStudyPackage M} (I : IdentificationPackage) where
  gFormulaClosed : I.gFormula
  ipwFormulaClosed : I.ipwFormula
  drFormulaClosed : I.drFormula
  identificationConditionsClosed : I.identificationConditions

def IdentificationClosed {M : CausalModelProgram} {S : ObservationalStudyPackage M} (I : IdentificationPackage) : Prop :=
  I.gFormula ∧ I.ipwFormula ∧ I.drFormula ∧ I.identificationConditions

theorem identification_closed_from_evidence {M : CausalModelProgram} {S : ObservationalStudyPackage M} (I : IdentificationPackage) (E : IdentificationEvidence I) :
    IdentificationClosed I := by
  exact And.intro E.gFormulaClosed (And.intro E.ipwFormulaClosed (And.intro E.drFormulaClosed E.identificationConditionsClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse