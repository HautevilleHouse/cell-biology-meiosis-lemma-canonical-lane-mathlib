import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure MeioticRecombinationPackage where
  spo11InitiatedDoubleStrandBreak : Prop
  resectionAndSingleStrandFormation : Prop
  rad51Dmc1MediatedInvasion : Prop
  dLoopFormation : Prop
  dnaSynthesisExtension : Prop
  secondEndCapture : Prop
  dHjFormation : Prop
  crossoverNoncrossoverDecision : Prop

structure MeioticRecombinationEvidence (M : MeioticRecombinationPackage) where
  spo11InitiatedDoubleStrandBreakClosed : M.spo11InitiatedDoubleStrandBreak
  resectionAndSingleStrandFormationClosed : M.resectionAndSingleStrandFormation
  rad51Dmc1MediatedInvasionClosed : M.rad51Dmc1MediatedInvasion
  dLoopFormationClosed : M.dLoopFormation
  dnaSynthesisExtensionClosed : M.dnaSynthesisExtension
  secondEndCaptureClosed : M.secondEndCapture
  dHjFormationClosed : M.dHjFormation
  crossoverNoncrossoverDecisionClosed : M.crossoverNoncrossoverDecision

def MeioticRecombinationClosed (M : MeioticRecombinationPackage) : Prop :=
  M.spo11InitiatedDoubleStrandBreak ∧ M.resectionAndSingleStrandFormation ∧
  M.rad51Dmc1MediatedInvasion ∧ M.dLoopFormation ∧
  M.dnaSynthesisExtension ∧ M.secondEndCapture ∧
  M.dHjFormation ∧ M.crossoverNoncrossoverDecision

theorem meiotic_recombination_closed_from_evidence (M : MeioticRecombinationPackage)
    (E : MeioticRecombinationEvidence M) : MeioticRecombinationClosed M := by
  exact And.intro E.spo11InitiatedDoubleStrandBreakClosed
    (And.intro E.resectionAndSingleStrandFormationClosed
      (And.intro E.rad51Dmc1MediatedInvasionClosed
        (And.intro E.dLoopFormationClosed
          (And.intro E.dnaSynthesisExtensionClosed
            (And.intro E.secondEndCaptureClosed
              (And.intro E.dHjFormationClosed E.crossoverNoncrossoverDecisionClosed))))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
