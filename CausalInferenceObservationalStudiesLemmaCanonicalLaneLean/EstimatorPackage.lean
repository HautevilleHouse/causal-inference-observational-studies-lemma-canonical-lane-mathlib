import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure EstimatorPackage where
  ipwEstimator : Prop
  outcomeRegression : Prop
  doublyRobust : Prop
  matchingEstimator : Prop

structure EstimatorEvidence (E : EstimatorPackage) where
  ipwEstimatorClosed : E.ipwEstimator
  outcomeRegressionClosed : E.outcomeRegression
  doublyRobustClosed : E.doublyRobust
  matchingEstimatorClosed : E.matchingEstimator

def EstimatorClosed (E : EstimatorPackage) : Prop :=
  E.ipwEstimator ∧ E.outcomeRegression ∧ E.doublyRobust ∧ E.matchingEstimator

theorem estimator_closed_from_evidence (E : EstimatorPackage)
    (Ev : EstimatorEvidence E) : EstimatorClosed E := by
  exact And.intro Ev.ipwEstimatorClosed
    (And.intro Ev.outcomeRegressionClosed
      (And.intro Ev.doublyRobustClosed Ev.matchingEstimatorClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
