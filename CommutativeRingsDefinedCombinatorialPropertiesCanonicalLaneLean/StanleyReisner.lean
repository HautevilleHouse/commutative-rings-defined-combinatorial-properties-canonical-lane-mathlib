import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure StanleyReisnerPackage where
  fieldType : Type u
  simplexComplex : Type u
  faceRing : Type u
  hVector : List Nat
  gVector : List Nat

structure StanleyReisnerEvidence (S : StanleyReisnerPackage) where
  hVectorNonnegative : ∀ i, S.hVector.get? i = some n → n ≥ 0
  gVectorNonnegative : ∀ i, S.gVector.get? i = some n → n ≥ 0
  faceRingClosed : True

def StanleyReisnerClosed (S : StanleyReisnerPackage) : Prop :=
  (∀ i, S.hVector.get? i = some n → n ≥ 0) ∧
  (∀ i, S.gVector.get? i = some n → n ≥ 0) ∧ True

theorem stanley_reisner_closed_from_evidence (S : StanleyReisnerPackage) (E : StanleyReisnerEvidence S) :
    StanleyReisnerClosed S := by
  exact And.intro E.hVectorNonnegative (And.intro E.gVectorNonnegative E.faceRingClosed)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse