import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure SynaptonemalComplexDynamics where
  axialElementFormation : Prop
  centralElementAssembly : Prop
  transverseFilamentCrosslinking : Prop
  tripartiteStructureMature : Prop

structure SynaptonemalComplexEvidence (S : SynaptonemalComplexDynamics) where
  axialElementFormationClosed : S.axialElementFormation
  centralElementAssemblyClosed : S.centralElementAssembly
  transverseFilamentCrosslinkingClosed : S.transverseFilamentCrosslinking
  tripartiteStructureMatureClosed : S.tripartiteStructureMature

def SynaptonemalComplexClosed (S : SynaptonemalComplexDynamics) : Prop :=
  S.axialElementFormation ∧ S.centralElementAssembly ∧
  S.transverseFilamentCrosslinking ∧ S.tripartiteStructureMature

theorem synaptonemal_complex_closed_from_evidence
    (S : SynaptonemalComplexDynamics) (E : SynaptonemalComplexEvidence S) :
    SynaptonemalComplexClosed S := by
  exact And.intro E.axialElementFormationClosed
    (And.intro E.centralElementAssemblyClosed
      (And.intro E.transverseFilamentCrosslinkingClosed
        E.tripartiteStructureMatureClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
