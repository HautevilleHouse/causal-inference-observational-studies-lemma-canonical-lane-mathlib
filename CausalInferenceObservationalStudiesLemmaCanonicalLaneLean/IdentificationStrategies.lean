import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure IdentificationStrategiesPackage where
  instrumentalVariable : Prop
  differenceInDifferences : Prop
  regressionDiscontinuity : Prop
  matching : Prop
  stratification : Prop
  knownConfounders : Prop
  knownConfoundersTerm : knownConfounders

structure IdentificationStrategiesEvidence (I : IdentificationStrategiesPackage) where
  knownConfoundersClosed : I.knownConfounders

def IdentificationStrategiesClosed (I : IdentificationStrategiesPackage) : Prop :=
  I.knownConfounders

theorem identification_strategies_closed_from_evidence (I : IdentificationStrategiesPackage)
    (E : IdentificationStrategiesEvidence I) : IdentificationStrategiesClosed I := by
  exact E.knownConfoundersClosed

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
