import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.IdentificationLemmas

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure InferenceProcedurePackage {M : CausalModelProgram} {S : ObservationalStudyPackage M} {I : IdentificationPackage} where
  estimatorType : String
  consistencyProof : Prop
  asymptoticNormality : Prop
  varianceEstimation : Prop

structure InferenceProcedureEvidence {M : CausalModelProgram} {S : ObservationalStudyPackage M} {I : IdentificationPackage} (P : InferenceProcedurePackage) where
  consistencyProofClosed : P.consistencyProof
  asymptoticNormalityClosed : P.asymptoticNormality
  varianceEstimationClosed : P.varianceEstimation

def InferenceProcedureClosed {M : CausalModelProgram} {S : ObservationalStudyPackage M} {I : IdentificationPackage} (P : InferenceProcedurePackage) : Prop :=
  P.consistencyProof ∧ P.asymptoticNormality ∧ P.varianceEstimation

theorem inference_procedure_closed_from_evidence {M : CausalModelProgram} {S : ObservationalStudyPackage M} {I : IdentificationPackage} (P : InferenceProcedurePackage) (E : InferenceProcedureEvidence P) :
    InferenceProcedureClosed P := by
  exact And.intro E.consistencyProofClosed (And.intro E.asymptoticNormalityClosed E.varianceEstimationClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse