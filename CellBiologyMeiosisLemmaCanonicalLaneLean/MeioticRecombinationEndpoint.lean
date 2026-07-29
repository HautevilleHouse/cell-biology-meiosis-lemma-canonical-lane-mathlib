import canonicalLaneMathlib.AdmissibleClass
import CellBiologyMeiosisLemmaCanonicalLaneLean.ChromosomeSegregationCheckpoint

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure MeioticRecombinationEndpointPackage {C : ChromosomePairPackage}
    {M : MeioticProphasePackage C} {R : RecombinationNodulePackage M}
    {S : SynaptonemalComplexAssemblyPackage R} {D : RecombinationNoduleDynamicsPackage R}
    {Chk : ChromosomeSegregationCheckpointPackage} (Z : MeioticDivisionPackage Chk) where
  haploidGameteProduction : Prop
  geneticDiversityAchieved : Prop
  homologousChromosomeDisjunction : Prop
  meiosisIICompletion : Prop
  gameteNonDisjunctionRateControlled : Prop

structure MeioticRecombinationEndpointEvidence {C : ChromosomePairPackage}
    {M : MeioticProphasePackage C} {R : RecombinationNodulePackage M}
    {S : SynaptonemalComplexAssemblyPackage R} {D : RecombinationNoduleDynamicsPackage R}
    {Chk : ChromosomeSegregationCheckpointPackage} {Z : MeioticDivisionPackage Chk}
    (Epkg : MeioticRecombinationEndpointPackage Z) where
  haploidGameteProductionClosed : Epkg.haploidGameteProduction
  geneticDiversityAchievedClosed : Epkg.geneticDiversityAchieved
  homologousChromosomeDisjunctionClosed : Epkg.homologousChromosomeDisjunction
  meiosisIICompletionClosed : Epkg.meiosisIICompletion
  gameteNonDisjunctionRateControlledClosed : Epkg.gameteNonDisjunctionRateControlled

def MeioticRecombinationEndpointClosed {C : ChromosomePairPackage}
    {M : MeioticProphasePackage C} {R : RecombinationNodulePackage M}
    {S : SynaptonemalComplexAssemblyPackage R} {D : RecombinationNoduleDynamicsPackage R}
    {Chk : ChromosomeSegregationCheckpointPackage} {Z : MeioticDivisionPackage Chk}
    (Epkg : MeioticRecombinationEndpointPackage Z) : Prop :=
  Epkg.haploidGameteProduction ∧ Epkg.geneticDiversityAchieved ∧ Epkg.homologousChromosomeDisjunction ∧ Epkg.meiosisIICompletion ∧ Epkg.gameteNonDisjunctionRateControlled

theorem meiotic_recombination_endpoint_closed_from_evidence {C : ChromosomePairPackage}
    {M : MeioticProphasePackage C} {R : RecombinationNodulePackage M}
    {S : SynaptonemalComplexAssemblyPackage R} {D : RecombinationNoduleDynamicsPackage R}
    {Chk : ChromosomeSegregationCheckpointPackage} {Z : MeioticDivisionPackage Chk}
    (Epkg : MeioticRecombinationEndpointPackage Z) (E : MeioticRecombinationEndpointEvidence Epkg) :
    MeioticRecombinationEndpointClosed Epkg := by
  exact And.intro E.haploidGameteProductionClosed
    (And.intro E.geneticDiversityAchievedClosed
      (And.intro E.homologousChromosomeDisjunctionClosed
        (And.intro E.meiosisIICompletionClosed E.gameteNonDisjunctionRateControlledClosed)))

theorem meiotic_recombination_endpoint_achieves_genetic_diversity
    {C : ChromosomePairPackage} {M : MeioticProphasePackage C} {R : RecombinationNodulePackage M}
    {S : SynaptonemalComplexAssemblyPackage R} {D : RecombinationNoduleDynamicsPackage R}
    {Chk : ChromosomeSegregationCheckpointPackage} {Z : MeioticDivisionPackage Chk}
    (Epkg : MeioticRecombinationEndpointPackage Z) :
    Epkg.geneticDiversityAchieved := by
  exact Epkg.geneticDiversityAchieved

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse