import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure PotentialOutcomesPackage where
  treatmentAssignment : Type u
  outcome : Type v
  individual : Type w
  consistency : Prop
  consistencyTerm : consistency

structure PotentialOutcomesEvidence (P : PotentialOutcomesPackage) where
  consistencyClosed : P.consistency

def PotentialOutcomesClosed (P : PotentialOutcomesPackage) : Prop :=
  P.consistency

theorem potential_outcomes_closed_from_evidence (P : PotentialOutcomesPackage)
    (E : PotentialOutcomesEvidence P) : PotentialOutcomesClosed P := by
  exact E.consistencyClosed

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
