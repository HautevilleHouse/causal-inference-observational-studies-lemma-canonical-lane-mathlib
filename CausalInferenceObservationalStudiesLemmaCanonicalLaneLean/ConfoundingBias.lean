import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure ConfoundingBiasCondition where
  measuredCovariates : Prop
  unmeasuredConfounders : Prop
  ignorability : Prop
  positivity : Prop

structure ConfoundingBiasEvidence (C : ConfoundingBiasCondition) where
  measuredCovariatesClosed : C.measuredCovariates
  unmeasuredConfoundersClosed : C.unmeasuredConfounders
  ignorabilityClosed : C.ignorability
  positivityClosed : C.positivity

def ConfoundingBiasClosed (C : ConfoundingBiasCondition) : Prop :=
  C.measuredCovariates ∧ C.unmeasuredConfounders ∧ C.ignorability ∧ C.positivity

theorem confounding_bias_closed_from_evidence
    (C : ConfoundingBiasCondition) (E : ConfoundingBiasEvidence C) :
    ConfoundingBiasClosed C := by
  exact And.intro E.measuredCovariatesClosed
    (And.intro E.unmeasuredConfoundersClosed
      (And.intro E.ignorabilityClosed E.positivityClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
