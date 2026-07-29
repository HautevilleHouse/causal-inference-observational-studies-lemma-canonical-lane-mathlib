import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure PropensityScorePackage where
  propensityFunction : Type u
  overlapCondition : Prop
  balanceProperty : Prop
  estimatedWeights : Type v

structure PropensityScoreEvidence (P : PropensityScorePackage) where
  overlapConditionClosed : P.overlapCondition
  balancePropertyClosed : P.balanceProperty

def PropensityScoreClosed (P : PropensityScorePackage) : Prop :=
  P.overlapCondition ∧ P.balanceProperty

theorem propensity_score_closed_from_evidence
    (P : PropensityScorePackage) (E : PropensityScoreEvidence P) :
    PropensityScoreClosed P := by
  exact And.intro E.overlapConditionClosed E.balancePropertyClosed

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
