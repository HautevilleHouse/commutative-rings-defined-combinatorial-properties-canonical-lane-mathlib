import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure CombinatorialRing where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  addAssoc : ∀ a b c : carrier, addition (addition a b) c = addition a (addition b c)
  addComm : ∀ a b : carrier, addition a b = addition b a
  zeroAdd : ∀ a : carrier, addition zero a = a
  addZero : ∀ a : carrier, addition a zero = a
  addInv : ∀ a : carrier, ∃ b : carrier, addition a b = zero
  mulAssoc : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  oneMul : ∀ a : carrier, multiplication one a = a
  mulOne : ∀ a : carrier, multiplication a one = a
  leftDistrib : ∀ a b c : carrier, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)
  rightDistrib : ∀ a b c : carrier, multiplication (addition a b) c = addition (multiplication a c) (multiplication b c)

structure AdmittedCombinatorialRingObject where
  ring : CombinatorialRing
  combinatorialProperty : Prop
  propertyWitness : combinatorialProperty
  conclusion : propertyWitness

def CombinatorialWitnessClosed (O : AdmittedCombinatorialRingObject) : Prop :=
  O.propertyWitness

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse
