import canonicalLaneMathlib.AdmissibleClass
import CodingInformationTheoryCompactionCompressionCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse