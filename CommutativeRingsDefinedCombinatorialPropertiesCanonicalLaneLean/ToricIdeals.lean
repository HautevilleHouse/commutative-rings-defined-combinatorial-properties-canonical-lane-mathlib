import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure ToricIdealEvidence (A : AdmissibleClass) where
  lattice : Lattice
  semigroup : Semigroup
  binomialGeneratorSet : BinomialSet
  evidence : binomialGeneratorSet.GeneratesToricIdeal

def ToricIdealClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧
  (∀ (T : ToricIdealEvidence A), T.evidence)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse