import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure PrimeIdealPackage where
  ring : AdmissibleClass
  primeIdealSet : Type
  booleanAlgebraStructure : Prop
  orderProperties : Prop
  cellularity : Nat

def PrimeIdealClosed (P : PrimeIdealPackage) : Prop :=
  P.booleanAlgebraStructure ∧ P.orderProperties

structure PrimeIdealEvidence (P : PrimeIdealPackage) where
  booleanAlgebraClosed : P.booleanAlgebraStructure
  orderPropertiesClosed : P.orderProperties

theorem prime_ideal_closed_from_evidence (P : PrimeIdealPackage)
    (E : PrimeIdealEvidence P) : PrimeIdealClosed P :=
  And.intro E.booleanAlgebraClosed E.orderPropertiesClosed

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse