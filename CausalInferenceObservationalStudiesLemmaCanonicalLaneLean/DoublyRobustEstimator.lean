import HautevilleHouse.CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure DoublyRobustEstimatorPackage where
  propensityScoreModel : Prop
  outcomeRegressionModel : Prop
  combiningFunction : Prop
  efficiency : Prop

structure DoublyRobustEstimatorEvidence (P : DoublyRobustEstimatorPackage) where
  propensityScoreModelClosed : P.propensityScoreModel
  outcomeRegressionModelClosed : P.outcomeRegressionModel
  combiningFunctionClosed : P.combiningFunction
  efficiencyClosed : P.efficiency

def DoublyRobustEstimatorPackageClosed (P : DoublyRobustEstimatorPackage) : Prop :=
  P.propensityScoreModel ∧ P.outcomeRegressionModel ∧ P.combiningFunction ∧ P.efficiency

theorem doubly_robust_estimator_package_closed_from_evidence (P : DoublyRobustEstimatorPackage) (E : DoublyRobustEstimatorEvidence P) : DoublyRobustEstimatorPackageClosed P := by
  exact And.intro E.propensityScoreModelClosed
    (And.intro E.outcomeRegressionModelClosed
      (And.intro E.combiningFunctionClosed E.efficiencyClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse