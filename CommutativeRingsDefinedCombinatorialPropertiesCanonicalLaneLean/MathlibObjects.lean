import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure AdmittedObject where
  ring : Type u
  combinatorialProperty : Prop
  propertySatisfied : Prop
  conclusion : propertySatisfied

def bridgeClosed (O : AdmittedObject) : Prop :=
  O.propertySatisfied

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse