import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure AdmissibleClass where
  object : InformationSource
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SourceCodingClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse