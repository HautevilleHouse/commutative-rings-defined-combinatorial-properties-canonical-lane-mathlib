import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure AssociatedPrimesPackage {I : IdealMultiplicityPackage} {P : PrimaryDecompositionPackage I} where
  assPrimeSet : Set I.ideal
  primeCondition : Prop
  annihilatorCondition : Prop
  minimalPrimes : Set I.ideal

structure AssociatedPrimesEvidence {I : IdealMultiplicityPackage} {P : PrimaryDecompositionPackage I} (A : AssociatedPrimesPackage P) where
  primeConditionClosed : A.primeCondition
  annihilatorConditionClosed : A.annihilatorCondition

def AssociatedPrimesClosed {I : IdealMultiplicityPackage} {P : PrimaryDecompositionPackage I} (A : AssociatedPrimesPackage P) : Prop :=
  A.primeCondition ∧ A.annihilatorCondition

theorem associated_primes_closed_from_evidence {I : IdealMultiplicityPackage} {P : PrimaryDecompositionPackage I} (A : AssociatedPrimesPackage P) (E : AssociatedPrimesEvidence A) :
    AssociatedPrimesClosed A := by
  exact And.intro E.primeConditionClosed E.annihilatorConditionClosed

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse