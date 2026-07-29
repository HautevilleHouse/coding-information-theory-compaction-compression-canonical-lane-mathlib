import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure KraftInequalityPackage where
  codeSymbols : ℕ
  codeLengths : List ℕ
  kraftSum : ℝ
  kraftInequalityHolds : Prop
  kraftSumTerm : kraftSum = (codeLengths.map (λ l => (1 / (codeSymbols : ℝ)) ^ l)).sum
  kraftInequalityHoldsTerm : kraftInequalityHolds

structure KraftInequalityEvidence (K : KraftInequalityPackage) where
  kraftSumClosed : K.kraftSum = (K.codeLengths.map (λ l => (1 / (K.codeSymbols : ℝ)) ^ l)).sum
  kraftInequalityHoldsClosed : K.kraftInequalityHolds

def KraftInequalityClosed (K : KraftInequalityPackage) : Prop :=
  K.kraftSum = (K.codeLengths.map (λ l => (1 / (K.codeSymbols : ℝ)) ^ l)).sum ∧ K.kraftInequalityHolds

theorem kraft_inequality_closed_from_evidence (K : KraftInequalityPackage)
    (E : KraftInequalityEvidence K) : KraftInequalityClosed K := by
  exact And.intro E.kraftSumClosed E.kraftInequalityHoldsClosed

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse