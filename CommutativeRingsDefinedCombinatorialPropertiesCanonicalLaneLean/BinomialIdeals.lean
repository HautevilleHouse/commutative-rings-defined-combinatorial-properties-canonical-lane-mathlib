import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure BinomialIdealEvidence (A : AdmissibleClass) where
  generatorsBinomial : A.object.ring → Prop
  closureUnderMonomials : Prop
  evidence : closureUnderMonomials

def BinomialIdealClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧
  (∀ B : BinomialIdealEvidence A, B.evidence)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse