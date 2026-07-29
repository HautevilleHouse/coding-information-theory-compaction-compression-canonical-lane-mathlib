import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure ShannonEntropyPackage where
  symbolSet : Type u
  probabilityDistribution : symbolSet → ℝ
  entropyValue : ℝ
  entropyNonnegative : entropyValue ≥ 0
  entropyMaxAtUniform : Prop

structure ShannonEntropyEvidence (E : ShannonEntropyPackage) where
  entropyNonnegativeClosed : E.entropyNonnegative
  entropyMaxAtUniformClosed : E.entropyMaxAtUniform

def ShannonEntropyClosed (E : ShannonEntropyPackage) : Prop :=
  E.entropyNonnegative ∧ E.entropyMaxAtUniform

theorem shannon_entropy_closed_from_evidence (E : ShannonEntropyPackage)
    (Ev : ShannonEntropyEvidence E) : ShannonEntropyClosed E := by
  exact And.intro Ev.entropyNonnegativeClosed Ev.entropyMaxAtUniformClosed

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse