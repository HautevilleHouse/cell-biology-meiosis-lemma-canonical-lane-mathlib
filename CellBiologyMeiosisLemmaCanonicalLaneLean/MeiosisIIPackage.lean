import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure MeiosisIIPackage (C : ChiasmataFormationPackage HomologousRecombinationPackage MeioticProphasePackage) where
  sisterChromatidSeparation : Prop
  equationalDivision : Prop
  haploidGameteProduction : Prop
  reductionalDivision : Prop

structure MeiosisIIEvidence {C : ChiasmataFormationPackage HomologousRecombinationPackage MeioticProphasePackage}
    (MII : MeiosisIIPackage C) where
  sisterChromatidSeparationClosed : MII.sisterChromatidSeparation
  equationalDivisionClosed : MII.equationalDivision
  haploidGameteProductionClosed : MII.haploidGameteProduction
  reductionalDivisionClosed : MII.reductionalDivision

def MeiosisIIClosed {C : ChiasmataFormationPackage HomologousRecombinationPackage MeioticProphasePackage}
    (MII : MeiosisIIPackage C) : Prop :=
  MII.sisterChromatidSeparation ∧ MII.equationalDivision ∧
  MII.haploidGameteProduction ∧ MII.reductionalDivision

theorem meiosis_II_closed_from_evidence
    {C : ChiasmataFormationPackage HomologousRecombinationPackage MeioticProphasePackage}
    (MII : MeiosisIIPackage C)
    (E : MeiosisIIEvidence MII) : MeiosisIIClosed MII := by
  exact And.intro E.sisterChromatidSeparationClosed
    (And.intro E.equationalDivisionClosed
      (And.intro E.haploidGameteProductionClosed E.reductionalDivisionClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
