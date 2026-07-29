import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure ShannonEntropyPackage where
  sourceAlphabet : Type u
  distribution : sourceAlphabet → ℝ
  entropy : ℝ
  entropyNonnegative : entropy ≥ 0
  entropyDefined : entropy = -∑ x, distribution x * Real.log (distribution x)

structure ShannonEntropyEvidence (E : ShannonEntropyPackage) where
  entropyNonnegativeClosed : E.entropyNonnegative
  entropyDefinedClosed : E.entropyDefined

def ShannonEntropyClosed (E : ShannonEntropyPackage) : Prop :=
  E.entropyNonnegative ∧ E.entropyDefined

theorem shannon_entropy_closed_from_evidence (E : ShannonEntropyPackage)
    (Ev : ShannonEntropyEvidence E) : ShannonEntropyClosed E := by
  exact And.intro Ev.entropyNonnegativeClosed Ev.entropyDefinedClosed

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse