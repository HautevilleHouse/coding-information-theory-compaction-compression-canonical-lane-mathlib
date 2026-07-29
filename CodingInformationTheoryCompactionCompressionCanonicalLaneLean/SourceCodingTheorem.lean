import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CodingInformationTheoryCompactionCompressionCanonicalLaneLean.ShannonEntropyBridge

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure SourceCodingPackage where
  entropy : ShannonEntropyPackage
  compressionRate : ℝ
  achievable : compressionRate ≥ entropy.entropyValue
  converse : compressionRate ≤ entropy.entropyValue

structure SourceCodingEvidence (C : SourceCodingPackage) where
  achievableClosed : C.achievable
  converseClosed : C.converse

def SourceCodingClosed (C : SourceCodingPackage) : Prop :=
  C.achievable ∧ C.converse

theorem source_coding_closed_from_evidence (C : SourceCodingPackage)
    (E : SourceCodingEvidence C) : SourceCodingClosed C := by
  exact And.intro E.achievableClosed E.converseClosed

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse
