import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CodingInformationTheoryCompactionCompressionCanonicalLaneLean.ShannonEntropyBridge

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure RateDistortionPackage where
  sourceEntropy : ShannonEntropyPackage
  distortionMeasure : ℝ
  rateDistortionFunction : ℝ → ℝ
  achievable : ∀ d ≥ 0, rateDistortionFunction d ≥ 0
  converse : ∀ d ≥ 0, rateDistortionFunction d ≤ sourceEntropy.entropyValue

structure RateDistortionEvidence (R : RateDistortionPackage) where
  achievableClosed : R.achievable
  converseClosed : R.converse

def RateDistortionClosed (R : RateDistortionPackage) : Prop :=
  R.achievable ∧ R.converse

theorem rate_distortion_closed_from_evidence (R : RateDistortionPackage)
    (E : RateDistortionEvidence R) : RateDistortionClosed R := by
  exact And.intro E.achievableClosed E.converseClosed

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse
