import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure CohenMacaulayPackage {I : IdealMultiplicityPackage} {P : PrimaryDecompositionPackage I} {A : AssociatedPrimesPackage P} where
  depth : ℕ
  krullDimension : ℕ
  depthEqualsDimension : Prop
  regularSequence : Type u
  cohenMacaulayCondition : Prop

structure CohenMacaulayEvidence {I : IdealMultiplicityPackage} {P : PrimaryDecompositionPackage I} {A : AssociatedPrimesPackage P} (C : CohenMacaulayPackage A) where
  depthEqualsDimensionClosed : C.depthEqualsDimension
  cohenMacaulayConditionClosed : C.cohenMacaulayCondition

def CohenMacaulayClosed {I : IdealMultiplicityPackage} {P : PrimaryDecompositionPackage I} {A : AssociatedPrimesPackage P} (C : CohenMacaulayPackage A) : Prop :=
  C.depthEqualsDimension ∧ C.cohenMacaulayCondition

theorem cohen_macaulay_closed_from_evidence {I : IdealMultiplicityPackage} {P : PrimaryDecompositionPackage I} {A : AssociatedPrimesPackage P} (C : CohenMacaulayPackage A) (E : CohenMacaulayEvidence C) :
    CohenMacaulayClosed C := by
  exact And.intro E.depthEqualsDimensionClosed E.cohenMacaulayConditionClosed

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse