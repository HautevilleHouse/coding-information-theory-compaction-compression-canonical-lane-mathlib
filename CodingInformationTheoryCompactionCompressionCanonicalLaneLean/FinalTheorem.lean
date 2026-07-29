import canonicalLaneMathlib.AdmissibleClass
import CodingInformationTheoryCompactionCompressionCanonicalLaneLean.BridgeLemmas
import CodingInformationTheoryCompactionCompressionCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

def ConstrainedInformationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_information_endgame (A : AdmissibleClass) : ConstrainedInformationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse