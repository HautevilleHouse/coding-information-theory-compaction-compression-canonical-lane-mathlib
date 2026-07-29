import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure LosslessCompressionPackage where
  encoder : Type u
  decoder : Type v
  codeLength : Type w
  prefixCondition : Prop
  kraftInequality : Prop
  huffmanOptimality : Prop

structure LosslessCompressionEvidence (L : LosslessCompressionPackage) where
  prefixConditionClosed : L.prefixCondition
  kraftInequalityClosed : L.kraftInequality
  huffmanOptimalityClosed : L.huffmanOptimality

def LosslessCompressionClosed (L : LosslessCompressionPackage) : Prop :=
  L.prefixCondition ∧ L.kraftInequality ∧ L.huffmanOptimality

theorem lossless_compression_closed_from_evidence (L : LosslessCompressionPackage)
    (Ev : LosslessCompressionEvidence L) : LosslessCompressionClosed L := by
  exact And.intro Ev.prefixConditionClosed
    (And.intro Ev.kraftInequalityClosed Ev.huffmanOptimalityClosed)

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse
