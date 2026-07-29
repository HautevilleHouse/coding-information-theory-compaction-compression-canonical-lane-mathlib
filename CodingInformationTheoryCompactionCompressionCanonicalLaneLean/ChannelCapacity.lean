import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CodingInformationTheoryCompactionCompressionCanonicalLaneLean.ShannonEntropyBridge

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure ChannelCapacityPackage where
  channelMatrix : Type -- e.g. matrix of transition probabilities
  capacity : ℝ
  nonnegativity : capacity ≥ 0
  boundByLogInput : capacity ≤ Real.log (S : Nat).toReal

structure ChannelCapacityEvidence (C : ChannelCapacityPackage) where
  nonnegativityClosed : C.nonnegativity
  boundByLogInputClosed : C.boundByLogInput

def ChannelCapacityClosed (C : ChannelCapacityPackage) : Prop :=
  C.nonnegativity ∧ C.boundByLogInput

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityPackage)
    (E : ChannelCapacityEvidence C) : ChannelCapacityClosed C := by
  exact And.intro E.nonnegativityClosed E.boundByLogInputClosed

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse
