import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure CrossoverRegulationPackage where
  doubleStrandBreakFormation : Prop
  resectionAndStrandInvasion : Prop
  dHjResolution : Prop
  crossoverFateDecision : Prop
  interferenceSignalPropagation : Prop
  classICrossoverDesignation : Prop
  classIICrossoverDesignation : Prop
  obligateCrossoverGuarantee : Prop

structure CrossoverRegulationEvidence (C : CrossoverRegulationPackage) where
  doubleStrandBreakFormationClosed : C.doubleStrandBreakFormation
  resectionAndStrandInvasionClosed : C.resectionAndStrandInvasion
  dHjResolutionClosed : C.dHjResolution
  crossoverFateDecisionClosed : C.crossoverFateDecision
  interferenceSignalPropagationClosed : C.interferenceSignalPropagation
  classICrossoverDesignationClosed : C.classICrossoverDesignation
  classIICrossoverDesignationClosed : C.classIICrossoverDesignation
  obligateCrossoverGuaranteeClosed : C.obligateCrossoverGuarantee

def CrossoverRegulationClosed (C : CrossoverRegulationPackage) : Prop :=
  C.doubleStrandBreakFormation ∧ C.resectionAndStrandInvasion ∧
  C.dHjResolution ∧ C.crossoverFateDecision ∧
  C.interferenceSignalPropagation ∧ C.classICrossoverDesignation ∧
  C.classIICrossoverDesignation ∧ C.obligateCrossoverGuarantee

theorem crossover_regulation_closed_from_evidence (C : CrossoverRegulationPackage)
    (E : CrossoverRegulationEvidence C) : CrossoverRegulationClosed C := by
  exact And.intro E.doubleStrandBreakFormationClosed
    (And.intro E.resectionAndStrandInvasionClosed
      (And.intro E.dHjResolutionClosed
        (And.intro E.crossoverFateDecisionClosed
          (And.intro E.interferenceSignalPropagationClosed
            (And.intro E.classICrossoverDesignationClosed
              (And.intro E.classIICrossoverDesignationClosed E.obligateCrossoverGuaranteeClosed))))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
