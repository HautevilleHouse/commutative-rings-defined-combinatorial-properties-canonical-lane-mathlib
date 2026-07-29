import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure StanleyReisnerData (A : AdmissibleClass) where
  faceComplex : SimplicialComplex
  faceRing : Type u
  isomorphismWithSquarefreeMonomialIdeal : Prop
  evidence : isomorphismWithSquarefreeMonomialIdeal

def StanleyReisnerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧
  (∀ (S : StanleyReisnerData A), S.evidence)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse