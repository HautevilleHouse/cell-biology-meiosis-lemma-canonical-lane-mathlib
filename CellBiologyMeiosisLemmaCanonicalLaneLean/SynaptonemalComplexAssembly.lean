import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure SynaptonemalComplexPackage where
  axialElementFormation : Prop
  centralElementAssembly : Prop
  transverseFilamentBridging : Prop
  recombinationNoduleFormation : Prop
  synapsisInitiation : Prop
  synapsisElongation : Prop
  synapsisCompletion : Prop
  crossoverRegulation : Prop

structure SynaptonemalComplexEvidence (S : SynaptonemalComplexPackage) where
  axialElementFormationClosed : S.axialElementFormation
  centralElementAssemblyClosed : S.centralElementAssembly
  transverseFilamentBridgingClosed : S.transverseFilamentBridging
  recombinationNoduleFormationClosed : S.recombinationNoduleFormation
  synapsisInitiationClosed : S.synapsisInitiation
  synapsisElongationClosed : S.synapsisElongation
  synapsisCompletionClosed : S.synapsisCompletion
  crossoverRegulationClosed : S.crossoverRegulation

def SynaptonemalComplexClosed (S : SynaptonemalComplexPackage) : Prop :=
  S.axialElementFormation ∧ S.centralElementAssembly ∧
  S.transverseFilamentBridging ∧ S.recombinationNoduleFormation ∧
  S.synapsisInitiation ∧ S.synapsisElongation ∧ S.synapsisCompletion ∧
  S.crossoverRegulation

theorem synaptonemal_complex_closed_from_evidence (S : SynaptonemalComplexPackage)
    (E : SynaptonemalComplexEvidence S) : SynaptonemalComplexClosed S := by
  exact And.intro E.axialElementFormationClosed
    (And.intro E.centralElementAssemblyClosed
      (And.intro E.transverseFilamentBridgingClosed
        (And.intro E.recombinationNoduleFormationClosed
          (And.intro E.synapsisInitiationClosed
            (And.intro E.synapsisElongationClosed
              (And.intro E.synapsisCompletionClosed E.crossoverRegulationClosed))))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
