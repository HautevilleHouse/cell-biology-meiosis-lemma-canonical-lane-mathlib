import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure ChromosomeSegregationCheckpointPackage where
  spindleAttachmentSensing : Prop
  tensionGeneration : Prop
  mad2Localization : Prop
  anaphasePromotion : Prop
  separaseActivation : Prop
  chromosomeNonDisjunctionMonitoring : Prop

structure ChromosomeSegregationCheckpointEvidence (C : ChromosomeSegregationCheckpointPackage) where
  spindleAttachmentSensingClosed : C.spindleAttachmentSensing
  tensionGenerationClosed : C.tensionGeneration
  mad2LocalizationClosed : C.mad2Localization
  anaphasePromotionClosed : C.anaphasePromotion
  separaseActivationClosed : C.separaseActivation
  chromosomeNonDisjunctionMonitoringClosed : C.chromosomeNonDisjunctionMonitoring

def ChromosomeSegregationCheckpointClosed (C : ChromosomeSegregationCheckpointPackage) : Prop :=
  C.spindleAttachmentSensing ∧ C.tensionGeneration ∧ C.mad2Localization ∧ C.anaphasePromotion ∧ C.separaseActivation ∧ C.chromosomeNonDisjunctionMonitoring

theorem chromosome_segregation_checkpoint_closed_from_evidence (C : ChromosomeSegregationCheckpointPackage) (E : ChromosomeSegregationCheckpointEvidence C) : ChromosomeSegregationCheckpointClosed C := by
  exact And.intro E.spindleAttachmentSensingClosed
    (And.intro E.tensionGenerationClosed
      (And.intro E.mad2LocalizationClosed
        (And.intro E.anaphasePromotionClosed
          (And.intro E.separaseActivationClosed E.chromosomeNonDisjunctionMonitoringClosed))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse