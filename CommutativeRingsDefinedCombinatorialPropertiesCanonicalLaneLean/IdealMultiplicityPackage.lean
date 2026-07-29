import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure IdealMultiplicityPackage where
  ideal : Type u
  ring : Type v
  multiplicity : ideal → ℕ
  finiteMultiplicityCondition : Prop
  multiplicityWellDefined : Prop
  associatesSet : Set ideal
  multiplicityBounded : Prop

structure IdealMultiplicityEvidence (I : IdealMultiplicityPackage) where
  finiteMultiplicityConditionClosed : I.finiteMultiplicityCondition
  multiplicityWellDefinedClosed : I.multiplicityWellDefined
  multiplicityBoundedClosed : I.multiplicityBounded

def IdealMultiplicityClosed (I : IdealMultiplicityPackage) : Prop :=
  I.finiteMultiplicityCondition ∧ I.multiplicityWellDefined ∧ I.multiplicityBounded

theorem ideal_multiplicity_closed_from_evidence (I : IdealMultiplicityPackage) (E : IdealMultiplicityEvidence I) :
    IdealMultiplicityClosed I := by
  exact And.intro E.finiteMultiplicityConditionClosed (And.intro E.multiplicityWellDefinedClosed E.multiplicityBoundedClosed)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse