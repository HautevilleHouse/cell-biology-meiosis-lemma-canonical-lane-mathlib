import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure CrossingOverMechanismPackage where
  doubleStrandBreakInduced : Prop
  resectionAndStrandInvasion : Prop
  holidayJunctionFormation : Prop
  resolutionPathways : Prop
  crossoverProductFormed : Prop
  noncrossoverProductFormed : Prop

structure CrossingOverMechanismEvidence (C : CrossingOverMechanismPackage) where
  doubleStrandBreakInducedClosed : C.doubleStrandBreakInduced
  resectionAndStrandInvasionClosed : C.resectionAndStrandInvasion
  holidayJunctionFormationClosed : C.holidayJunctionFormation
  resolutionPathwaysClosed : C.resolutionPathways
  crossoverProductFormedClosed : C.crossoverProductFormed
  noncrossoverProductFormedClosed : C.noncrossoverProductFormed

def CrossingOverMechanismClosed (C : CrossingOverMechanismPackage) : Prop :=
  C.doubleStrandBreakInduced ∧ C.resectionAndStrandInvasion ∧
  C.holidayJunctionFormation ∧ C.resolutionPathways ∧
  C.crossoverProductFormed ∧ C.noncrossoverProductFormed

theorem crossing_over_mechanism_closed_from_evidence (C : CrossingOverMechanismPackage)
    (E : CrossingOverMechanismEvidence C) : CrossingOverMechanismClosed C :=
  And.intro E.doubleStrandBreakInducedClosed
    (And.intro E.resectionAndStrandInvasionClosed
      (And.intro E.holidayJunctionFormationClosed
        (And.intro E.resolutionPathwaysClosed
          (And.intro E.crossoverProductFormedClosed
            E.noncrossoverProductFormedClosed))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
