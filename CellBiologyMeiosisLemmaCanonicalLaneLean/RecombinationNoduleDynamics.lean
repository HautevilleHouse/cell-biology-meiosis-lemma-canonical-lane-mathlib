import canonicalLaneMathlib.AdmissibleClass
import CellBiologyMeiosisLemmaCanonicalLaneLean.MeioticProphasePackage

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure RecombinationNoduleDynamicsPackage {C : ChromosomePairPackage} {M : MeioticProphasePackage C} (R : RecombinationNodulePackage M) where
  earlyNodulePlacement : Prop
  dSBreakFormation : Prop
  strandInvasion : Prop
  hollidayJunctionResolution : Prop
  crossoverInterference : Prop
  mlh1FociMarking : Prop

structure RecombinationNoduleDynamicsEvidence {C : ChromosomePairPackage} {M : MeioticProphasePackage C} {R : RecombinationNodulePackage M} (D : RecombinationNoduleDynamicsPackage R) where
  earlyNodulePlacementClosed : D.earlyNodulePlacement
  dSBreakFormationClosed : D.dSBreakFormation
  strandInvasionClosed : D.strandInvasion
  hollidayJunctionResolutionClosed : D.hollidayJunctionResolution
  crossoverInterferenceClosed : D.crossoverInterference
  mlh1FociMarkingClosed : D.mlh1FociMarking

def RecombinationNoduleDynamicsClosed {C : ChromosomePairPackage} {M : MeioticProphasePackage C} {R : RecombinationNodulePackage M} (D : RecombinationNoduleDynamicsPackage R) : Prop :=
  D.earlyNodulePlacement ∧ D.dSBreakFormation ∧ D.strandInvasion ∧ D.hollidayJunctionResolution ∧ D.crossoverInterference ∧ D.mlh1FociMarking

theorem recombination_nodule_dynamics_closed_from_evidence {C : ChromosomePairPackage} {M : MeioticProphasePackage C} {R : RecombinationNodulePackage M} (D : RecombinationNoduleDynamicsPackage R) (E : RecombinationNoduleDynamicsEvidence D) : RecombinationNoduleDynamicsClosed D := by
  exact And.intro E.earlyNodulePlacementClosed
    (And.intro E.dSBreakFormationClosed
      (And.intro E.strandInvasionClosed
        (And.intro E.hollidayJunctionResolutionClosed
          (And.intro E.crossoverInterferenceClosed E.mlh1FociMarkingClosed))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse