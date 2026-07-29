import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure CombinatorialIdealPackage where
  ring : Type u
  ringOps : Ring ring
  generators : List (ring × ring)
  combinatorialDescription : Prop
  idealMembership : ring → Prop
  closedUnderAddition : Prop
  closedUnderMultiplication : Prop

structure CombinatorialIdealEvidence (I : CombinatorialIdealPackage) where
  generatorsClosed : I.combinatorialDescription
  idealClosed : ∀ (x y : I.ring), I.idealMembership x → I.idealMembership y → I.idealMembership (x + y)
  absorptionClosed : ∀ (r x : I.ring), I.idealMembership x → I.idealMembership (r * x)

def CombinatorialIdealClosed (I : CombinatorialIdealPackage) : Prop :=
  I.combinatorialDescription ∧ (∀ (x y : I.ring), I.idealMembership x → I.idealMembership y → I.idealMembership (x + y)) ∧ (∀ (r x : I.ring), I.idealMembership x → I.idealMembership (r * x))

theorem combinatorial_ideal_closed_from_evidence (I : CombinatorialIdealPackage) (E : CombinatorialIdealEvidence I) : CombinatorialIdealClosed I := by
  exact And.intro E.generatorsClosed (And.intro E.idealClosed E.absorptionClosed)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse