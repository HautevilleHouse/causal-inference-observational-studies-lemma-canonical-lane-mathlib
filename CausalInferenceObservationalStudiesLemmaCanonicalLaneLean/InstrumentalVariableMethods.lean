import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure InstrumentalVariablePackage where
  instrument : Type u → Prop
  relevanceCondition : Prop
  exclusionRestriction : Prop
  monotonicityAssumption : Prop
  noDefiers : Prop

structure InstrumentalVariableEvidence (I : InstrumentalVariablePackage) where
  relevanceConditionClosed : I.relevanceCondition
  exclusionRestrictionClosed : I.exclusionRestriction
  monotonicityAssumptionClosed : I.monotonicityAssumption
  noDefiersClosed : I.noDefiers

def InstrumentalVariableClosed (I : InstrumentalVariablePackage) : Prop :=
  I.relevanceCondition ∧ I.exclusionRestriction ∧ I.monotonicityAssumption ∧ I.noDefiers

theorem instrumental_variable_closed_from_evidence
    (I : InstrumentalVariablePackage) (E : InstrumentalVariableEvidence I) :
    InstrumentalVariableClosed I := by
  exact And.intro E.relevanceConditionClosed
    (And.intro E.exclusionRestrictionClosed
      (And.intro E.monotonicityAssumptionClosed E.noDefiersClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse