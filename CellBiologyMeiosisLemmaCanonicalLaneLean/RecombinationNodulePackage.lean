import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure RecombinationNodulePackage where
  homologousChromosomesPaired : Prop
  synaptonemalComplexFormed : Prop
  crossoverEvents : Prop
  chiasmataFormed : Prop
  homologSeparation : Prop
  reductionalDivision : Prop
  equitableDistribution : Prop

structure RecombinationNoduleEvidence (R : RecombinationNodulePackage) where
  homologousChromosomesPairedClosed : R.homologousChromosomesPaired
  synaptonemalComplexFormedClosed : R.synaptonemalComplexFormed
  crossoverEventsClosed : R.crossoverEvents
  chiasmataFormedClosed : R.chiasmataFormed
  homologSeparationClosed : R.homologSeparation
  reductionalDivisionClosed : R.reductionalDivision
  equitableDistributionClosed : R.equitableDistribution

def RecombinationNoduleClosed (R : RecombinationNodulePackage) : Prop :=
  R.homologousChromosomesPaired ∧ R.synaptonemalComplexFormed ∧ R.crossoverEvents ∧
  R.chiasmataFormed ∧ R.homologSeparation ∧ R.reductionalDivision ∧ R.equitableDistribution

theorem recombination_nodule_closed_from_evidence (R : RecombinationNodulePackage)
    (E : RecombinationNoduleEvidence R) : RecombinationNoduleClosed R :=
  And.intro E.homologousChromosomesPairedClosed
    (And.intro E.synaptonemalComplexFormedClosed
      (And.intro E.crossoverEventsClosed
        (And.intro E.chiasmataFormedClosed
          (And.intro E.homologSeparationClosed
            (And.intro E.reductionalDivisionClosed
              E.equitableDistributionClosed)))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
