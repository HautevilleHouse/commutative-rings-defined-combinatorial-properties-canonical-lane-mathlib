import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean.CombinatorialRingObjects

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | AdmittedCombinatorialRingObject.mk ring prop witness => prop

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  match A.object with
  | AdmittedCombinatorialRingObject.mk ring prop witness => exact witness

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse
