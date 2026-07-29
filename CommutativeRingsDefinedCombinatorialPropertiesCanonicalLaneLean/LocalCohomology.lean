import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure LocalCohomologyPackage where
  ringType : Type u
  idealType : Type u
  cohomologicalDimension : Nat
  vanishingCondition : Prop
  supportDimension : Nat

structure LocalCohomologyEvidence (L : LocalCohomologyPackage) where
  vanishingClosed : L.vanishingCondition → L.cohomologicalDimension ≤ L.supportDimension
  supportDimensionClosed : L.supportDimension < ℕ

def LocalCohomologyClosed (L : LocalCohomologyPackage) : Prop :=
  (L.vanishingCondition → L.cohomologicalDimension ≤ L.supportDimension) ∧ L.supportDimension < ℕ

theorem local_cohomology_closed_from_evidence (L : LocalCohomologyPackage) (E : LocalCohomologyEvidence L) :
    LocalCohomologyClosed L := by
  exact And.intro E.vanishingClosed E.supportDimensionClosed

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse