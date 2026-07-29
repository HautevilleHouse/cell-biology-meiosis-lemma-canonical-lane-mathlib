import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure HomologousPairingSynapsisPackage where
  homologySearch : Prop
  bouquetFormation : Prop
  telomereLedMovement : Prop
  homologAlignment : Prop
  synaptonemalComplexInitiation : Prop
  synaptonemalComplexAssembly : Prop
  psScSuppression : Prop
  completePairingAchieved : Prop

structure HomologousPairingSynapsisEvidence (H : HomologousPairingSynapsisPackage) where
  homologySearchClosed : H.homologySearch
  bouquetFormationClosed : H.bouquetFormation
  telomereLedMovementClosed : H.telomereLedMovement
  homologAlignmentClosed : H.homologAlignment
  synaptonemalComplexInitiationClosed : H.synaptonemalComplexInitiation
  synaptonemalComplexAssemblyClosed : H.synaptonemalComplexAssembly
  psScSuppressionClosed : H.psScSuppression
  completePairingAchievedClosed : H.completePairingAchieved

def HomologousPairingSynapsisClosed (H : HomologousPairingSynapsisPackage) : Prop :=
  H.homologySearch ∧ H.bouquetFormation ∧
  H.telomereLedMovement ∧ H.homologAlignment ∧
  H.synaptonemalComplexInitiation ∧ H.synaptonemalComplexAssembly ∧
  H.psScSuppression ∧ H.completePairingAchieved

theorem homologous_pairing_synapsis_closed_from_evidence (H : HomologousPairingSynapsisPackage)
    (E : HomologousPairingSynapsisEvidence H) : HomologousPairingSynapsisClosed H := by
  exact And.intro E.homologySearchClosed
    (And.intro E.bouquetFormationClosed
      (And.intro E.telomereLedMovementClosed
        (And.intro E.homologAlignmentClosed
          (And.intro E.synaptonemalComplexInitiationClosed
            (And.intro E.synaptonemalComplexAssemblyClosed
              (And.intro E.psScSuppressionClosed E.completePairingAchievedClosed))))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
