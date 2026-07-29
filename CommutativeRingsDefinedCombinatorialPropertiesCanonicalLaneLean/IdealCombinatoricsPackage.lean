import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure IdealCombinatoricsPackage where
  ringType : Type u
  idealLattice : Type v
  krullDimension : Nat
  radicalProperties : Prop
  associatedPrimes : Prop
  primaryDecomposition : Prop

structure IdealCombinatoricsEvidence (C : IdealCombinatoricsPackage) where
  krullDimensionClosed : C.krullDimension = 0 ∨ C.krullDimension = 1
  radicalPropertiesClosed : C.radicalProperties
  associatedPrimesClosed : C.associatedPrimes
  primaryDecompositionClosed : C.primaryDecomposition

def IdealCombinatoricsClosed (C : IdealCombinatoricsPackage) : Prop :=
  (C.krullDimension = 0 ∨ C.krullDimension = 1) ∧
  C.radicalProperties ∧ C.associatedPrimes ∧ C.primaryDecomposition

theorem ideal_combinatorics_closed_from_evidence (C : IdealCombinatoricsPackage) (E : IdealCombinatoricsEvidence C) :
    IdealCombinatoricsClosed C := by
  exact And.intro E.krullDimensionClosed
    (And.intro E.radicalPropertiesClosed
      (And.intro E.associatedPrimesClosed E.primaryDecompositionClosed))

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse