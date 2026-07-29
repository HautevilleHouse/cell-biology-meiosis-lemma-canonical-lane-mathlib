import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure MeiosisIIPackage where
  sisterChromatidAlignment : Prop
  meiosisIITrigger : Prop
  sisterChromatidSeparation : Prop
  gameteFormation : Prop

structure MeiosisIIEvidence (M : MeiosisIIPackage) where
  sisterChromatidAlignmentClosed : M.sisterChromatidAlignment
  meiosisIITriggerClosed : M.meiosisIITrigger
  sisterChromatidSeparationClosed : M.sisterChromatidSeparation
  gameteFormationClosed : M.gameteFormation

def MeiosisIIClosed (M : MeiosisIIPackage) : Prop :=
  M.sisterChromatidAlignment ∧ M.meiosisIITrigger ∧
  M.sisterChromatidSeparation ∧ M.gameteFormation

theorem meiosisII_closed_from_evidence (M : MeiosisIIPackage)
    (E : MeiosisIIEvidence M) : MeiosisIIClosed M := by
  exact And.intro E.sisterChromatidAlignmentClosed
    (And.intro E.meiosisIITriggerClosed
      (And.intro E.sisterChromatidSeparationClosed E.gameteFormationClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse