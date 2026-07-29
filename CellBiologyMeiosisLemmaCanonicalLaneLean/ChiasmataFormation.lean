import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure ChiasmataFormationPackage (H : HomologousRecombinationPackage MeioticProphasePackage) where
  chiasmataVisible : Prop
  crossoverFrequency : Prop
  interferencePattern : Prop
  chiasmataResolution : Prop

structure ChiasmataFormationEvidence {H : HomologousRecombinationPackage MeioticProphasePackage}
    (C : ChiasmataFormationPackage H) where
  chiasmataVisibleClosed : C.chiasmataVisible
  crossoverFrequencyClosed : C.crossoverFrequency
  interferencePatternClosed : C.interferencePattern
  chiasmataResolutionClosed : C.chiasmataResolution

def ChiasmataFormationClosed {H : HomologousRecombinationPackage MeioticProphasePackage}
    (C : ChiasmataFormationPackage H) : Prop :=
  C.chiasmataVisible ∧ C.crossoverFrequency ∧
  C.interferencePattern ∧ C.chiasmataResolution

theorem chiasmata_formation_closed_from_evidence
    {H : HomologousRecombinationPackage MeioticProphasePackage}
    (C : ChiasmataFormationPackage H)
    (E : ChiasmataFormationEvidence C) : ChiasmataFormationClosed C := by
  exact And.intro E.chiasmataVisibleClosed
    (And.intro E.crossoverFrequencyClosed
      (And.intro E.interferencePatternClosed E.chiasmataResolutionClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
