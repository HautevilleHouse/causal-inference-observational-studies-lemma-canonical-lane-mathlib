import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure ObservationalStudyCausalModelPackage where
  population : Type u
  treatment : population → Prop
  outcome : population → ℝ
  potentialOutcomes : population → ℝ → ℝ
  ignorabilityAssumption : Prop
  positivityAssumption : Prop
  noUnmeasuredConfounders : Prop

structure ObservationalStudyCausalModelEvidence (P : ObservationalStudyCausalModelPackage) where
  ignorabilityAssumptionClosed : P.ignorabilityAssumption
  positivityAssumptionClosed : P.positivityAssumption
  noUnmeasuredConfoundersClosed : P.noUnmeasuredConfounders

def ObservationalStudyCausalModelClosed (P : ObservationalStudyCausalModelPackage) : Prop :=
  P.ignorabilityAssumption ∧ P.positivityAssumption ∧ P.noUnmeasuredConfounders

theorem observational_study_causal_model_closed_from_evidence
    (P : ObservationalStudyCausalModelPackage)
    (E : ObservationalStudyCausalModelEvidence P) :
    ObservationalStudyCausalModelClosed P := by
  exact And.intro E.ignorabilityAssumptionClosed
    (And.intro E.positivityAssumptionClosed E.noUnmeasuredConfoundersClosed)

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse
