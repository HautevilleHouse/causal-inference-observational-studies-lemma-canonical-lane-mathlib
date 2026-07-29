import HautevilleHouse.CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.EstimandConstruction

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure EstimatorConsistencyPackage {C : ConfoundingControlPackage} {I : IdentificationStrategyPackage C}
    {E : EstimandConstructionPackage I} where
  ipwEstimator : Prop
  doublyRobustEstimator : Prop
  asymptoticNormality : Prop

def EstimatorConsistencyClosed {C : ConfoundingControlPackage} {I : IdentificationStrategyPackage C}
    {E : EstimandConstructionPackage I} (P : EstimatorConsistencyPackage E) : Prop :=
  P.ipwEstimator ∧ P.doublyRobustEstimator ∧ P.asymptoticNormality

structure EstimatorConsistencyEvidence {C : ConfoundingControlPackage} {I : IdentificationStrategyPackage C}
    {E : EstimandConstructionPackage I} (P : EstimatorConsistencyPackage E) where
  ipwEstimatorClosed : P.ipwEstimator
  doublyRobustEstimatorClosed : P.doublyRobustEstimator
  asymptoticNormalityClosed : P.asymptoticNormality

theorem estimator_consistency_closed_from_evidence {C : ConfoundingControlPackage} {I : IdentificationStrategyPackage C}
    {E : EstimandConstructionPackage I} (P : EstimatorConsistencyPackage E)
    (Ev : EstimatorConsistencyEvidence P) : EstimatorConsistencyClosed P := by
  exact And.intro Ev.ipwEstimatorClosed (And.intro Ev.doublyRobustEstimatorClosed Ev.asymptoticNormalityClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse