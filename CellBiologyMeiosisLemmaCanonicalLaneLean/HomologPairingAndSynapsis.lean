import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure HomologPairingAndSynapsis where
  homologySearchMechanism : Prop
  paringStabilization : Prop
  synapsisInitiation : Prop
  synapsisCompletion : Prop
  checkpointActivation : Prop

structure HomologPairingEvidence (H : HomologPairingAndSynapsis) where
  homologySearchMechanismClosed : H.homologySearchMechanism
  paringStabilizationClosed : H.paringStabilization
  synapsisInitiationClosed : H.synapsisInitiation
  synapsisCompletionClosed : H.synapsisCompletion
  checkpointActivationClosed : H.checkpointActivation

def HomologPairingClosed (H : HomologPairingAndSynapsis) : Prop :=
  H.homologySearchMechanism ∧ H.paringStabilization ∧
  H.synapsisInitiation ∧ H.synapsisCompletion ∧
  H.checkpointActivation

theorem homolog_pairing_closed_from_evidence
    (H : HomologPairingAndSynapsis) (E : HomologPairingEvidence H) :
    HomologPairingClosed H := by
  exact And.intro E.homologySearchMechanismClosed
    (And.intro E.paringStabilizationClosed
      (And.intro E.synapsisInitiationClosed
        (And.intro E.synapsisCompletionClosed
          E.checkpointActivationClosed)))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
