import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure CrossoverInterferenceModel where
  obligateCrossoverRule : Prop
  interferenceDistance : Prop
  castleEastsModelSatisfied : Prop
  countingFunctionPositive : Prop
  interferenceFactor : ℝ

structure CrossoverInterferenceEvidence (C : CrossoverInterferenceModel) where
  obligateCrossoverRuleClosed : C.obligateCrossoverRule
  interferenceDistanceClosed : C.interferenceDistance
  castleEastsModelSatisfiedClosed : C.castleEastsModelSatisfied
  countingFunctionPositiveClosed : C.countingFunctionPositive

def CrossoverInterferenceClosed (C : CrossoverInterferenceModel) : Prop :=
  C.obligateCrossoverRule ∧ C.interferenceDistance ∧
  C.castleEastsModelSatisfied ∧ C.countingFunctionPositive

theorem crossover_interference_closed_from_evidence
    (C : CrossoverInterferenceModel) (E : CrossoverInterferenceEvidence C) :
    CrossoverInterferenceClosed C := by
  exact And.intro E.obligateCrossoverRuleClosed
    (And.intro E.interferenceDistanceClosed
      (And.intro E.castleEastsModelSatisfiedClosed
        E.countingFunctionPositiveClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
