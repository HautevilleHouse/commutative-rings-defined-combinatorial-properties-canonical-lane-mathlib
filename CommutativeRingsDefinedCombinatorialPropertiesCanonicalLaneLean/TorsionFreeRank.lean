import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure TorsionFreeRankPackage where
  moduleType : Type u
  ringType : Type u
  rank : Nat
  torsionSubmodule : Prop
  freeResolution : Prop

structure TorsionFreeRankEvidence (R : TorsionFreeRankPackage) where
  rankFinite : R.rank < ℕ
  torsionSubmoduleClosed : R.torsionSubmodule
  freeResolutionClosed : R.freeResolution

def TorsionFreeRankClosed (R : TorsionFreeRankPackage) : Prop :=
  R.rank < ℕ ∧ R.torsionSubmodule ∧ R.freeResolution

theorem torsion_free_rank_closed_from_evidence (R : TorsionFreeRankPackage) (E : TorsionFreeRankEvidence R) :
    TorsionFreeRankClosed R := by
  exact And.intro E.rankFinite
    (And.intro E.torsionSubmoduleClosed E.freeResolutionClosed)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse