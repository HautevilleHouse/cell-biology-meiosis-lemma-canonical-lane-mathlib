import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure HomologousRecombinationPackage (M : MeioticProphasePackage) where
  dsbFormation : Prop
  strandInvasion : Prop
  hollidayJunction : Prop
  resolutionProducts : Prop

structure HomologousRecombinationEvidence {M : MeioticProphasePackage}
    (H : HomologousRecombinationPackage M) where
  dsbFormationClosed : H.dsbFormation
  strandInvasionClosed : H.strandInvasion
  hollidayJunctionClosed : H.hollidayJunction
  resolutionProductsClosed : H.resolutionProducts

def HomologousRecombinationClosed {M : MeioticProphasePackage}
    (H : HomologousRecombinationPackage M) : Prop :=
  H.dsbFormation ∧ H.strandInvasion ∧
  H.hollidayJunction ∧ H.resolutionProducts

theorem homologous_recombination_closed_from_evidence
    {M : MeioticProphasePackage} (H : HomologousRecombinationPackage M)
    (E : HomologousRecombinationEvidence H) : HomologousRecombinationClosed H := by
  exact And.intro E.dsbFormationClosed
    (And.intro E.strandInvasionClosed
      (And.intro E.hollidayJunctionClosed E.resolutionProductsClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
