import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure MeiosisProphaseIPackage where
  homologousChromosomePairing : Prop
  synaptonemalComplexAssembly : Prop
  recombinationNoduleFormation : Prop
  crossoverResolution : Prop

structure MeiosisProphaseIEvidence (M : MeiosisProphaseIPackage) where
  homologousChromosomePairingClosed : M.homologousChromosomePairing
  synaptonemalComplexAssemblyClosed : M.synaptonemalComplexAssembly
  recombinationNoduleFormationClosed : M.recombinationNoduleFormation
  crossoverResolutionClosed : M.crossoverResolution

def MeiosisProphaseIClosed (M : MeiosisProphaseIPackage) : Prop :=
  M.homologousChromosomePairing ∧ M.synaptonemalComplexAssembly ∧
  M.recombinationNoduleFormation ∧ M.crossoverResolution

theorem meiosis_prophaseI_closed_from_evidence (M : MeiosisProphaseIPackage)
    (E : MeiosisProphaseIEvidence M) : MeiosisProphaseIClosed M := by
  exact And.intro E.homologousChromosomePairingClosed
    (And.intro E.synaptonemalComplexAssemblyClosed
      (And.intro E.recombinationNoduleFormationClosed E.crossoverResolutionClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse