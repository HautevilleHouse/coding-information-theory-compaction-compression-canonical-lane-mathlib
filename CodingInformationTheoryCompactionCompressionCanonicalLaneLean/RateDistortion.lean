import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure RateDistortionPackage where
  sourceAlphabet : Type u
  reproductionAlphabet : Type v
  distortionMeasure : Type w
  rateDistortionFunction : Type x
  rateDistortionDefined : Prop
  rateDistortionTheorem : Prop
  operationalRelevance : Prop

structure RateDistortionEvidence (R : RateDistortionPackage) where
  rateDistortionDefinedClosed : R.rateDistortionDefined
  rateDistortionTheoremClosed : R.rateDistortionTheorem
  operationalRelevanceClosed : R.operationalRelevance

def RateDistortionClosed (R : RateDistortionPackage) : Prop :=
  R.rateDistortionDefined ∧ R.rateDistortionTheorem ∧ R.operationalRelevance

theorem rate_distortion_closed_from_evidence (R : RateDistortionPackage)
    (Ev : RateDistortionEvidence R) : RateDistortionClosed R := by
  exact And.intro Ev.rateDistortionDefinedClosed
    (And.intro Ev.rateDistortionTheoremClosed Ev.operationalRelevanceClosed)

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse
