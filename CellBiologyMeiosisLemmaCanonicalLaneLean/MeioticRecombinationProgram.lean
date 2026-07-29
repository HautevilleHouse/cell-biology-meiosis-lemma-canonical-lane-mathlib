import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure MeioticRecombinationProgram where
  doubleStrandBreakInduction : Prop
  synaptonemalComplexAssembly : Prop
  crossoverResolution : Prop
  homologousChromosomePairing : Prop

structure MeioticRecombinationEvidence (M : MeioticRecombinationProgram) where
  doubleStrandBreakInductionClosed : M.doubleStrandBreakInduction
  synaptonemalComplexAssemblyClosed : M.synaptonemalComplexAssembly
  crossoverResolutionClosed : M.crossoverResolution
  homologousChromosomePairingClosed : M.homologousChromosomePairing

def MeioticRecombinationClosed (M : MeioticRecombinationProgram) : Prop :=
  M.doubleStrandBreakInduction ∧ M.synaptonemalComplexAssembly ∧
  M.crossoverResolution ∧ M.homologousChromosomePairing

theorem meiotic_recombination_closed_from_evidence
    (M : MeioticRecombinationProgram) (E : MeioticRecombinationEvidence M) :
    MeioticRecombinationClosed M := by
  exact And.intro E.doubleStrandBreakInductionClosed
    (And.intro E.synaptonemalComplexAssemblyClosed
      (And.intro E.crossoverResolutionClosed
        E.homologousChromosomePairingClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
