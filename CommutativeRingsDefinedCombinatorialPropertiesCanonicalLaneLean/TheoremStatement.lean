import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure CommutativeRingAdmittedObject where
  ring : Type u
  ringStr : Ring ring
  combinatorialProperty : Prop
  conclusion : combinatorialProperty

def CommutativeRingWitnessClosed (O : CommutativeRingAdmittedObject) : Prop :=
  O.combinatorialProperty

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse