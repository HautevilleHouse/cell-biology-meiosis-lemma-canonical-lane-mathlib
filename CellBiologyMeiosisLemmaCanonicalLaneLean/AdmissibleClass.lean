import HautevilleHouse.CellBiologyMeiosisLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MeiosisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeiosisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse