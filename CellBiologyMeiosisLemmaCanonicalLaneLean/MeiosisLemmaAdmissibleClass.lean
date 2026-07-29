import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure MeiosisLemmaAdmittedObject where
  meioticProcess : Prop
  chromosomeReduction : Prop
  geneticDiversity : Prop
  correctSegregation : Prop
  haploidGameteFormation : Prop
  conclusion : meioticProcess ∧ chromosomeReduction ∧ geneticDiversity ∧ correctSegregation ∧ haploidGameteFormation

structure AdmissibleClass where
  object : MeiosisLemmaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
