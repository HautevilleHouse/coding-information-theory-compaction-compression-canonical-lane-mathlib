import canonicalLaneMathlib.AdmissibleClass
import CodingInformationTheoryCompactionCompressionCanonicalLaneLean.ShannonEntropySource

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure HuffmanPackage (E : ShannonEntropyPackage) where
  codeTable : E.sourceAlphabet → List Bool
  prefixFree : ∀ x y, x ≠ y → ¬ (codeTable x).isPrefixOf (codeTable y)
  expectedLength : ℝ
  optimality : expectedLength ≤ E.entropy + 1

def HuffmanClosed {E : ShannonEntropyPackage} (H : HuffmanPackage E) : Prop :=
  H.prefixFree ∧ H.optimality

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse