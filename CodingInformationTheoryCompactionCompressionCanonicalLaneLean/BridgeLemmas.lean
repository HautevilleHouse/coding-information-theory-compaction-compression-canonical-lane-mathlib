import canonicalLaneMathlib.AdmissibleClass
import CodingInformationTheoryCompactionCompressionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CodingInformationTheoryCompactionCompressionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SourceCodingClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CodingInformationTheoryCompactionCompressionCanonicalLaneLean
end HautevilleHouse