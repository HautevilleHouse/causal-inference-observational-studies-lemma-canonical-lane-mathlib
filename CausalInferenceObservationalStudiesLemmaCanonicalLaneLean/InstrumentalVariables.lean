import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure InstrumentalVariableCondition where
  relevance : Prop
  exclusion : Prop
  monotonicity : Prop
  causalEffect : Type u

structure InstrumentalVariableEvidence (I : InstrumentalVariableCondition) where
  relevanceClosed : I.relevance
  exclusionClosed : I.exclusion
  monotonicityClosed : I.monotonicity

def InstrumentalVariableClosed (I : InstrumentalVariableCondition) : Prop :=
  I.relevance ∧ I.exclusion ∧ I.monotonicity

theorem instrumental_variable_closed_from_evidence
    (I : InstrumentalVariableCondition) (E : InstrumentalVariableEvidence I) :
    InstrumentalVariableClosed I := by
  exact And.intro E.relevanceClosed
    (And.intro E.exclusionClosed E.monotonicityClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
