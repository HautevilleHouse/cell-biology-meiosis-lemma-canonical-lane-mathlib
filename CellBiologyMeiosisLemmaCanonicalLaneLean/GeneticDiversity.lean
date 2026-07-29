import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure GeneticDiversityPackage where
  independentAssortment : Prop
  crossingOverVariation : Prop
  randomFertilization : Prop
  alleleCombinationNovelty : Prop

structure GeneticDiversityEvidence (G : GeneticDiversityPackage) where
  independentAssortmentClosed : G.independentAssortment
  crossingOverVariationClosed : G.crossingOverVariation
  randomFertilizationClosed : G.randomFertilization
  alleleCombinationNoveltyClosed : G.alleleCombinationNovelty

def GeneticDiversityClosed (G : GeneticDiversityPackage) : Prop :=
  G.independentAssortment ∧ G.crossingOverVariation ∧
  G.randomFertilization ∧ G.alleleCombinationNovelty

theorem genetic_diversity_closed_from_evidence (G : GeneticDiversityPackage)
    (E : GeneticDiversityEvidence G) : GeneticDiversityClosed G := by
  exact And.intro E.independentAssortmentClosed
    (And.intro E.crossingOverVariationClosed
      (And.intro E.randomFertilizationClosed E.alleleCombinationNoveltyClosed))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse