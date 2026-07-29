import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure EntropySourceCodingPackage where
  sourceAlphabet : Type u
  sourceDistribution : Type v
  entropyFunctional : Type w
  expectedLength : Type x
  entropyDefined : Prop
  sourceCodingTheorem : Prop
  entropyLowerBound : Prop
  expectedLengthOptimal : Prop

structure EntropySourceCodingEvidence (E : EntropySourceCodingPackage) where
  entropyDefinedClosed : E.entropyDefined
  sourceCodingTheoremClosed : E.sourceCodingTheorem
  entropyLowerBoundClosed : E.entropyLowerBound
  expectedLengthOptimalClosed : E.expectedLengthOptimal

def EntropySourceCodingClosed (E : EntropySourceCodingPackage) : Prop :=
  E.entropyDefined ∧ E.sourceCodingTheorem ∧ E.entropyLowerBound ∧ E.expectedLengthOptimal

theorem entropy_source_coding_closed_from_evidence (E : EntropySourceCodingPackage)
    (Ev : EntropySourceCodingEvidence E) : EntropySourceCodingClosed E := by
  exact And.intro Ev.entropyDefinedClosed (And.intro Ev.sourceCodingTheoremClosed
    (And.intro Ev.entropyLowerBoundClosed Ev.expectedLengthOptimalClosed))

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse
