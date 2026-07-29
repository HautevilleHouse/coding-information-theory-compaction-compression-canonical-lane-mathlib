import canonicalLaneMathlib.AdmissibleClass
import CodingInformationTheoryCompactionCompressionCanonicalLaneLean.ShannonEntropySource

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

structure AWGNChannelPackage where
  inputAlphabet : Type u
  outputAlphabet : Type v
  noiseVariance : ℝ
  capacity : ℝ
  capacityFormula : capacity = 0.5 * Real.log (1 + signalPower / noiseVariance)
  signalPower : ℝ
  signalPowerPositive : signalPower > 0

def ChannelCapacityClosed (C : AWGNChannelPackage) : Prop :=
  C.capacityFormula ∧ C.signalPowerPositive

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse