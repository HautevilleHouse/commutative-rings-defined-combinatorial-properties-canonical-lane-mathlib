import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure RegularLocalRingPackage where
  ring : AdmissibleClass
  localRingStructure : Prop
  maximalIdealGeneration : Prop
  krullDimensionEqualsEmbeddingDimension : Prop
  globalDimensionFinite : Prop

def RegularLocalRingClosed (R : RegularLocalRingPackage) : Prop :=
  R.localRingStructure ∧ R.maximalIdealGeneration ∧ R.krullDimensionEqualsEmbeddingDimension ∧ R.globalDimensionFinite

structure RegularLocalRingEvidence (R : RegularLocalRingPackage) where
  localRingClosed : R.localRingStructure
  maximalClosed : R.maximalIdealGeneration
  dimEqEmbedClosed : R.krullDimensionEqualsEmbeddingDimension
  globalDimFiniteClosed : R.globalDimensionFinite

theorem regular_local_ring_closed_from_evidence (R : RegularLocalRingPackage)
    (E : RegularLocalRingEvidence R) : RegularLocalRingClosed R :=
  And.intro E.localRingClosed (And.intro E.maximalClosed (And.intro E.dimEqEmbedClosed E.globalDimFiniteClosed))

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse