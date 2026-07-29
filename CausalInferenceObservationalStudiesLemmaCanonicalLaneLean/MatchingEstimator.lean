import HautevilleHouse.CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure MatchingEstimatorPackage where
  distanceMetric : Prop
  caliper : Prop
  matchingAlgorithm : Prop
  biasCorrection : Prop

structure MatchingEstimatorEvidence (P : MatchingEstimatorPackage) where
  distanceMetricClosed : P.distanceMetric
  caliperClosed : P.caliper
  matchingAlgorithmClosed : P.matchingAlgorithm
  biasCorrectionClosed : P.biasCorrection

def MatchingEstimatorPackageClosed (P : MatchingEstimatorPackage) : Prop :=
  P.distanceMetric ∧ P.caliper ∧ P.matchingAlgorithm ∧ P.biasCorrection

theorem matching_estimator_package_closed_from_evidence (P : MatchingEstimatorPackage) (E : MatchingEstimatorEvidence P) : MatchingEstimatorPackageClosed P := by
  exact And.intro E.distanceMetricClosed
    (And.intro E.caliperClosed
      (And.intro E.matchingAlgorithmClosed E.biasCorrectionClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse