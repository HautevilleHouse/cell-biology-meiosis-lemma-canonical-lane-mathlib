import canonicalLaneMathlib.AdmissibleClass
import CellBiologyMeiosisLemmaCanonicalLaneLean.BridgeLemmas
import CellBiologyMeiosisLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

def ConstrainedMeiosisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_meiosis_endgame (A : AdmissibleClass) :
    ConstrainedMeiosisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse