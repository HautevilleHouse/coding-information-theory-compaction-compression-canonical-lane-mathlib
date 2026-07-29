import canonicalLaneMathlib.AdmissibleClass
import CodingInformationTheoryCompactionCompressionCanonicalLaneLean.ShannonEntropySource

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure LempelZivPackage (E : ShannonEntropyPackage) where
  dataSequences : List (List E.sourceAlphabet)
  compressionRatio : ℝ
  asymptoticOptimality : limsup_{n→∞} (compressionRatio) ≤ E.entropy

def LempelZivClosed {E : ShannonEntropyPackage} (L : LempelZivPackage E) : Prop :=
  L.asymptoticOptimality

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse