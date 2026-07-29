import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure LossyCompressionPackage where
  encoder : Type u
  decoder : Type v
  codebook : Type w
  distortionConstraint : Prop
  shannonLowerBound : Prop
  vectorQuantizationAchievability : Prop

structure LossyCompressionEvidence (L : LossyCompressionPackage) where
  distortionConstraintClosed : L.distortionConstraint
  shannonLowerBoundClosed : L.shannonLowerBound
  vectorQuantizationAchievabilityClosed : L.vectorQuantizationAchievability

def LossyCompressionClosed (L : LossyCompressionPackage) : Prop :=
  L.distortionConstraint ∧ L.shannonLowerBound ∧ L.vectorQuantizationAchievability

theorem lossy_compression_closed_from_evidence (L : LossyCompressionPackage)
    (Ev : LossyCompressionEvidence L) : LossyCompressionClosed L := by
  exact And.intro Ev.distortionConstraintClosed
    (And.intro Ev.shannonLowerBoundClosed Ev.vectorQuantizationAchievabilityClosed)

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse
