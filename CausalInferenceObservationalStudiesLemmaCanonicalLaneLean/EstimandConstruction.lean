import HautevilleHouse.CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.IdentificationStrategy

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure EstimandConstructionPackage {C : ConfoundingControlPackage} {I : IdentificationStrategyPackage C} where
  ateEstimand : Prop
  attEstimand : Prop
  outcomeRegression : Prop

def EstimandConstructionClosed {C : ConfoundingControlPackage} {I : IdentificationStrategyPackage C}
    (E : EstimandConstructionPackage I) : Prop :=
  E.ateEstimand ∧ E.attEstimand ∧ E.outcomeRegression

structure EstimandConstructionEvidence {C : ConfoundingControlPackage} {I : IdentificationStrategyPackage C}
    (E : EstimandConstructionPackage I) where
  ateEstimandClosed : E.ateEstimand
  attEstimandClosed : E.attEstimand
  outcomeRegressionClosed : E.outcomeRegression

theorem estimand_construction_closed_from_evidence {C : ConfoundingControlPackage} {I : IdentificationStrategyPackage C}
    (E : EstimandConstructionPackage I) (Ev : EstimandConstructionEvidence E) :
    EstimandConstructionClosed E := by
  exact And.intro Ev.ateEstimandClosed (And.intro Ev.attEstimandClosed Ev.outcomeRegressionClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse