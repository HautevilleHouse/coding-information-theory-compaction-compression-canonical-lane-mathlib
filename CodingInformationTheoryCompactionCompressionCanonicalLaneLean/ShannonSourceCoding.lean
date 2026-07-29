import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure ShannonSourceCodingPackage where
  sourceAlphabet : Type u
  sourceDistribution : sourceAlphabet → ℝ
  entropy : ℝ
  codeAlphabet : Type v
  codeLengths : sourceAlphabet → ℕ
  expectedLength : ℝ
  entropyBound : ℝ
  optimalCodeExists : Prop
  entropyBoundTerm : entropyBound = entropy
  optimalCodeExistsTerm : optimalCodeExists

structure ShannonSourceCodingEvidence (S : ShannonSourceCodingPackage) where
  entropyBoundClosed : S.entropyBound = S.entropy
  optimalCodeExistsClosed : S.optimalCodeExists

def ShannonSourceCodingClosed (S : ShannonSourceCodingPackage) : Prop :=
  S.entropyBound = S.entropy ∧ S.optimalCodeExists

theorem shannon_source_coding_closed_from_evidence (S : ShannonSourceCodingPackage)
    (E : ShannonSourceCodingEvidence S) : ShannonSourceCodingClosed S := by
  exact And.intro E.entropyBoundClosed E.optimalCodeExistsClosed

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse