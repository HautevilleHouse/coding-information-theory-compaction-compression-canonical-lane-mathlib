import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure ArithmeticCodingPackage where
  sourceAlphabet : Type u
  probabilityModel : Type v
  encoder : Type w
  decoder : Type x
  intervalRepresentation : Prop
  encodingUniqueness : Prop
  decodingCorrectness : Prop
  efficiencyOptimal : Prop

structure ArithmeticCodingEvidence (A : ArithmeticCodingPackage) where
  intervalRepresentationClosed : A.intervalRepresentation
  encodingUniquenessClosed : A.encodingUniqueness
  decodingCorrectnessClosed : A.decodingCorrectness
  efficiencyOptimalClosed : A.efficiencyOptimal

def ArithmeticCodingClosed (A : ArithmeticCodingPackage) : Prop :=
  A.intervalRepresentation ∧ A.encodingUniqueness ∧ A.decodingCorrectness ∧ A.efficiencyOptimal

theorem arithmetic_coding_closed_from_evidence (A : ArithmeticCodingPackage)
    (Ev : ArithmeticCodingEvidence A) : ArithmeticCodingClosed A := by
  exact And.intro Ev.intervalRepresentationClosed
    (And.intro Ev.encodingUniquenessClosed
      (And.intro Ev.decodingCorrectnessClosed Ev.efficiencyOptimalClosed))

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse
