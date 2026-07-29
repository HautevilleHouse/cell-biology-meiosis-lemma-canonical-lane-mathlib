import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure ChromosomeSegregationLemma where
  cohesionResolution : Prop
  spindleAttachmentBiorientation : Prop
  anaphaseIOnset : Prop
  reductionalDivision : Prop
  equationalDivision : Prop

structure ChromosomeSegregationEvidence (C : ChromosomeSegregationLemma) where
  cohesionResolutionClosed : C.cohesionResolution
  spindleAttachmentBiorientationClosed : C.spindleAttachmentBiorientation
  anaphaseIOnsetClosed : C.anaphaseIOnset
  reductionalDivisionClosed : C.reductionalDivision
  equationalDivisionClosed : C.equationalDivision

def ChromosomeSegregationClosed (C : ChromosomeSegregationLemma) : Prop :=
  C.cohesionResolution ∧ C.spindleAttachmentBiorientation ∧
  C.anaphaseIOnset ∧ C.reductionalDivision ∧ C.equationalDivision

theorem chromosome_segregation_closed_from_evidence
    (C : ChromosomeSegregationLemma) (E : ChromosomeSegregationEvidence C) :
    ChromosomeSegregationClosed C := by
  exact And.intro E.cohesionResolutionClosed
    (And.intro E.spindleAttachmentBiorientationClosed
      (And.intro E.anaphaseIOnsetClosed
        (And.intro E.reductionalDivisionClosed
          E.equationalDivisionClosed)))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
