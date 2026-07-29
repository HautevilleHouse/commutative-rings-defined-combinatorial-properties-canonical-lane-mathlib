import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean.CombinatorialBridge
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean.CombinatorialGate

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

def ConstrainedCombinatorialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_combinatorial_endgame (A : AdmissibleClass) : ConstrainedCombinatorialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse
