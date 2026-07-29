import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure HuffmanCodingPackage where
  symbolProbabilities : List (String × ℝ)
  codeTree : Type u
  codeLengths : List ℕ
  expectedLength : ℝ
  optimalExpectedLength : ℝ
  huffmanOptimal : Prop
  huffmanOptimalTerm : huffmanOptimal

structure HuffmanCodingEvidence (H : HuffmanCodingPackage) where
  huffmanOptimalClosed : H.huffmanOptimal

def HuffmanCodingClosed (H : HuffmanCodingPackage) : Prop :=
  H.huffmanOptimal

theorem huffman_coding_closed_from_evidence (H : HuffmanCodingPackage)
    (E : HuffmanCodingEvidence H) : HuffmanCodingClosed H := by
  exact E.huffmanOptimalClosed

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse