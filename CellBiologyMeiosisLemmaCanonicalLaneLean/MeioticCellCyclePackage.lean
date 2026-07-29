import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure MeioticCellCyclePackage where
  prophaseIStart : Prop
  homologousPairing : Prop
  synapsisComplete : Prop
  recombinationInitiated : Prop
  chiasmaFormation : Prop
  metaphaseIAlignment : Prop
  anaphaseISeparation : Prop
  cytokinesisIComplete : Prop
  prophaseIIStart : Prop
  metaphaseIIAlignment : Prop
  anaphaseIISeparation : Prop
  cytokinesisIIComplete : Prop
  fourHaploidGametesProduced : Prop

structure MeioticCellCycleEvidence (M : MeioticCellCyclePackage) where
  prophaseIStartClosed : M.prophaseIStart
  homologousPairingClosed : M.homologousPairing
  synapsisCompleteClosed : M.synapsisComplete
  recombinationInitiatedClosed : M.recombinationInitiated
  chiasmaFormationClosed : M.chiasmaFormation
  metaphaseIAlignmentClosed : M.metaphaseIAlignment
  anaphaseISeparationClosed : M.anaphaseISeparation
  cytokinesisICompleteClosed : M.cytokinesisIComplete
  prophaseIIStartClosed : M.prophaseIIStart
  metaphaseIIAlignmentClosed : M.metaphaseIIAlignment
  anaphaseIISeparationClosed : M.anaphaseIISeparation
  cytokinesisIICompleteClosed : M.cytokinesisIIComplete
  fourHaploidGametesProducedClosed : M.fourHaploidGametesProduced

def MeioticCellCycleClosed (M : MeioticCellCyclePackage) : Prop :=
  M.prophaseIStart ∧ M.homologousPairing ∧ M.synapsisComplete ∧
  M.recombinationInitiated ∧ M.chiasmaFormation ∧ M.metaphaseIAlignment ∧
  M.anaphaseISeparation ∧ M.cytokinesisIComplete ∧ M.prophaseIIStart ∧
  M.metaphaseIIAlignment ∧ M.anaphaseIISeparation ∧ M.cytokinesisIIComplete ∧
  M.fourHaploidGametesProduced

theorem meiotic_cell_cycle_closed_from_evidence (M : MeioticCellCyclePackage)
    (E : MeioticCellCycleEvidence M) : MeioticCellCycleClosed M := by
  exact And.intro E.prophaseIStartClosed
    (And.intro E.homologousPairingClosed
      (And.intro E.synapsisCompleteClosed
        (And.intro E.recombinationInitiatedClosed
          (And.intro E.chiasmaFormationClosed
            (And.intro E.metaphaseIAlignmentClosed
              (And.intro E.anaphaseISeparationClosed
                (And.intro E.cytokinesisICompleteClosed
                  (And.intro E.prophaseIIStartClosed
                    (And.intro E.metaphaseIIAlignmentClosed
                      (And.intro E.anaphaseIISeparationClosed
                        (And.intro E.cytokinesisIICompleteClosed E.fourHaploidGametesProducedClosed)))))))))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
