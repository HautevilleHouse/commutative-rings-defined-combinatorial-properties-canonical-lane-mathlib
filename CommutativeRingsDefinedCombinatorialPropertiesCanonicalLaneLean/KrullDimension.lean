import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure KrullDimensionPackage where
  ring : AdmissibleClass
  chainLength : Nat
  maximalChainCondition : Prop
  catenaryProperty : Prop

def KrullDimensionClosed (K : KrullDimensionPackage) : Prop :=
  K.maximalChainCondition ∧ K.catenaryProperty

structure KrullDimensionEvidence (K : KrullDimensionPackage) where
  maximalChainClosed : K.maximalChainCondition
  catenaryClosed : K.catenaryProperty

theorem krull_dimension_closed_from_evidence (K : KrullDimensionPackage)
    (E : KrullDimensionEvidence K) : KrullDimensionClosed K :=
  And.intro E.maximalChainClosed E.catenaryClosed

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse