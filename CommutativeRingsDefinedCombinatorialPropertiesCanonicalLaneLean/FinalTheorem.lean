import canonicalLaneMathlib.AdmissibleClass
import CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean.PolynomialIdentity
import CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean.CombinatorialIdeal
import CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean.BinomialIdentity

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let P : PolynomialIdentityPackage := A.object
  PolynomialIdentityClosed P

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedCommutativeRingsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_commutative_rings_endgame (A : AdmissibleClass) : ConstrainedCommutativeRingsClosure A := by
  exact And.intro A.endpointSatisfied (by
    -- gate closed: from AdmissibleClass.gateWitness
    exact A.gateWitness)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse