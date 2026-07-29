import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure PropensityScorePackage where
  propensityFunction : Type u → Type v
  estimatedPropensity : Type w
  balancingProperty : Prop
  overlapCondition : Prop
  unconfoundednessGivenPropensity : Prop

structure PropensityScoreEvidence (P : PropensityScorePackage) where
  balancingPropertyClosed : P.balancingProperty
  overlapConditionClosed : P.overlapCondition
  unconfoundednessGivenPropensityClosed : P.unconfoundednessGivenPropensity

def PropensityScoreClosed (P : PropensityScorePackage) : Prop :=
  P.balancingProperty ∧ P.overlapCondition ∧ P.unconfoundednessGivenPropensity

theorem propensity_score_closed_from_evidence
    (P : PropensityScorePackage) (E : PropensityScoreEvidence P) :
    PropensityScoreClosed P := by
  exact And.intro E.balancingPropertyClosed
    (And.intro E.overlapConditionClosed E.unconfoundednessGivenPropensityClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse