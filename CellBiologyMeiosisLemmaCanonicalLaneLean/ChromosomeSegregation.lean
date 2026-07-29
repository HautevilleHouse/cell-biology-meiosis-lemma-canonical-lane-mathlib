import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure ChromosomeSegregationPackage (MII : MeiosisIIPackage ChiasmataFormationPackage HomologousRecombinationPackage MeioticProphasePackage) where
  spindleAttachment : Prop
  anaphaseI : Prop
  anaphaseII : Prop
  nondisjunctionRate : Prop

structure ChromosomeSegregationEvidence {MII : MeiosisIIPackage ChiasmataFormationPackage HomologousRecombinationPackage MeioticProphasePackage}
    (S : ChromosomeSegregationPackage MII) where
  spindleAttachmentClosed : S.spindleAttachment
  anaphaseIClosed : S.anaphaseI
  anaphaseIIClosed : S.anaphaseII
  nondisjunctionRateClosed : S.nondisjunctionRate

def ChromosomeSegregationClosed {MII : MeiosisIIPackage ChiasmataFormationPackage HomologousRecombinationPackage MeioticProphasePackage}
    (S : ChromosomeSegregationPackage MII) : Prop :=
  S.spindleAttachment ∧ S.anaphaseI ∧
  S.anaphaseII ∧ S.nondisjunctionRate

theorem chromosome_segregation_closed_from_evidence
    {MII : MeiosisIIPackage ChiasmataFormationPackage HomologousRecombinationPackage MeioticProphasePackage}
    (S : ChromosomeSegregationPackage MII)
    (E : ChromosomeSegregationEvidence S) : ChromosomeSegregationClosed S := by
  exact And.intro E.spindleAttachmentClosed
    (And.intro E.anaphaseIClosed
      (And.intro E.anaphaseIIClosed E.nondisjunctionRateClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
