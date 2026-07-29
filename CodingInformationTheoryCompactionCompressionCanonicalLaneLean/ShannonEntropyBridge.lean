import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure ShannonEntropyPackage where
  alphabetSize : Nat
  probabilityDistribution : alphabetSize > 0 -> (Fin alphabetSize -> ℝ) -- sum to 1
  entropyValue : ℝ
  nonnegativity : entropyValue ≥ 0
  boundByLogAlphabet : entropyValue ≤ Real.log (alphabetSize : ℝ)

structure ShannonEntropyEvidence (S : ShannonEntropyPackage) where
  nonnegativityClosed : S.nonnegativity
  boundByLogAlphabetClosed : S.boundByLogAlphabet

def ShannonEntropyClosed (S : ShannonEntropyPackage) : Prop :=
  S.nonnegativity ∧ S.boundByLogAlphabet

theorem shannon_entropy_closed_from_evidence (S : ShannonEntropyPackage)
    (E : ShannonEntropyEvidence S) : ShannonEntropyClosed S := by
  exact And.intro E.nonnegativityClosed E.boundByLogAlphabetClosed

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse
