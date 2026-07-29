import HautevilleHouse.CausalInferenceObservationalStudiesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesLemmaCanonicalLaneLean

structure IgnorabilityAssumptionPackage where
  unconfoundedness : Prop
  conditionalExchangeability : Prop
  noUnmeasuredConfounding : Prop
  consistencyAssumption : Prop

structure IgnorabilityAssumptionEvidence (P : IgnorabilityAssumptionPackage) where
  unconfoundednessClosed : P.unconfoundedness
  conditionalExchangeabilityClosed : P.conditionalExchangeability
  noUnmeasuredConfoundingClosed : P.noUnmeasuredConfounding
  consistencyAssumptionClosed : P.consistencyAssumption

def IgnorabilityAssumptionPackageClosed (P : IgnorabilityAssumptionPackage) : Prop :=
  P.unconfoundedness ∧ P.conditionalExchangeability ∧ P.noUnmeasuredConfounding ∧ P.consistencyAssumption

theorem ignorability_assumption_package_closed_from_evidence (P : IgnorabilityAssumptionPackage) (E : IgnorabilityAssumptionEvidence P) : IgnorabilityAssumptionPackageClosed P := by
  exact And.intro E.unconfoundednessClosed
    (And.intro E.conditionalExchangeabilityClosed
      (And.intro E.noUnmeasuredConfoundingClosed E.consistencyAssumptionClosed))

end CausalInferenceObservationalStudiesLemmaCanonicalLaneLean
end HautevilleHouse