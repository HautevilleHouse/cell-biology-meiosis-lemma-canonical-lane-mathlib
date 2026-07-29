import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure NondisjunctionPreventionPackage where
  meioticSpindleAssembly : Prop
  microtubuleKineticoreAttachment : Prop
  tensionSensing : Prop
  mad2Bub1Recruitment : Prop
  anaphasePromotingComplexActivation : Prop
  separaseSecurinCheckpoint : Prop
  correctChromosomeSegregation : Prop
  aneuploidyAvoided : Prop

structure NondisjunctionPreventionEvidence (N : NondisjunctionPreventionPackage) where
  meioticSpindleAssemblyClosed : N.meioticSpindleAssembly
  microtubuleKineticoreAttachmentClosed : N.microtubuleKineticoreAttachment
  tensionSensingClosed : N.tensionSensing
  mad2Bub1RecruitmentClosed : N.mad2Bub1Recruitment
  anaphasePromotingComplexActivationClosed : N.anaphasePromotingComplexActivation
  separaseSecurinCheckpointClosed : N.separaseSecurinCheckpoint
  correctChromosomeSegregationClosed : N.correctChromosomeSegregation
  aneuploidyAvoidedClosed : N.aneuploidyAvoided

def NondisjunctionPreventionClosed (N : NondisjunctionPreventionPackage) : Prop :=
  N.meioticSpindleAssembly ∧ N.microtubuleKineticoreAttachment ∧
  N.tensionSensing ∧ N.mad2Bub1Recruitment ∧
  N.anaphasePromotingComplexActivation ∧ N.separaseSecurinCheckpoint ∧
  N.correctChromosomeSegregation ∧ N.aneuploidyAvoided

theorem nondisjunction_prevention_closed_from_evidence (N : NondisjunctionPreventionPackage)
    (E : NondisjunctionPreventionEvidence N) : NondisjunctionPreventionClosed N := by
  exact And.intro E.meioticSpindleAssemblyClosed
    (And.intro E.microtubuleKineticoreAttachmentClosed
      (And.intro E.tensionSensingClosed
        (And.intro E.mad2Bub1RecruitmentClosed
          (And.intro E.anaphasePromotingComplexActivationClosed
            (And.intro E.separaseSecurinCheckpointClosed
              (And.intro E.correctChromosomeSegregationClosed E.aneuploidyAvoidedClosed))))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
