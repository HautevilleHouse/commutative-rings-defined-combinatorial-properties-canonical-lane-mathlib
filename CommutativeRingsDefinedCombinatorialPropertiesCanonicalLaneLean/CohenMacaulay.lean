import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure CohenMacaulayPackage where
  ringType : Type u
  depth : Nat
  krullDimension : Nat
  maximalCohenMacaulayModules : Prop
  canonicalModule : Prop

structure CohenMacaulayEvidence (C : CohenMacaulayPackage) where
  depthEqKrull : C.depth = C.krullDimension
  maximalCohenMacaulayModulesClosed : C.maximalCohenMacaulayModules
  canonicalModuleClosed : C.canonicalModule

def CohenMacaulayClosed (C : CohenMacaulayPackage) : Prop :=
  C.depth = C.krullDimension ∧ C.maximalCohenMacaulayModules ∧ C.canonicalModule

theorem cohen_macaulay_closed_from_evidence (C : CohenMacaulayPackage) (E : CohenMacaulayEvidence C) :
    CohenMacaulayClosed C := by
  exact And.intro E.depthEqKrull
    (And.intro E.maximalCohenMacaulayModulesClosed E.canonicalModuleClosed)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse