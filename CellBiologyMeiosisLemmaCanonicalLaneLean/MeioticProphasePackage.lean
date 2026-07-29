import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure MeioticProphasePackage where
  chromosomePairing : Prop
  synaptonemalComplexFormation : Prop
  crossingOverOccurs : Prop
  recombinationNodules : Prop

structure MeioticProphaseEvidence (M : MeioticProphasePackage) where
  chromosomePairingClosed : M.chromosomePairing
  synaptonemalComplexFormationClosed : M.synaptonemalComplexFormation
  crossingOverOccursClosed : M.crossingOverOccurs
  recombinationNodulesClosed : M.recombinationNodules

def MeioticProphaseClosed (M : MeioticProphasePackage) : Prop :=
  M.chromosomePairing ∧ M.synaptonemalComplexFormation ∧
  M.crossingOverOccurs ∧ M.recombinationNodules

theorem meiotic_prophase_closed_from_evidence (M : MeioticProphasePackage)
    (E : MeioticProphaseEvidence M) : MeioticProphaseClosed M := by
  exact And.intro E.chromosomePairingClosed
    (And.intro E.synaptonemalComplexFormationClosed
      (And.intro E.crossingOverOccursClosed E.recombinationNodulesClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
