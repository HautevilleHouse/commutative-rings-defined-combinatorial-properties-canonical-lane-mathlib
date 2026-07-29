import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure PrimaryDecompositionPackage (I : IdealMultiplicityPackage) where
  primaryComponents : Set I.ideal
  intersectionCondition : Prop
  uniquenessCondition : Prop
  embeddedComponents : Set I.ideal
  isolatedComponents : Set I.ideal

structure PrimaryDecompositionEvidence {I : IdealMultiplicityPackage} (P : PrimaryDecompositionPackage I) where
  intersectionConditionClosed : P.intersectionCondition
  uniquenessConditionClosed : P.uniquenessCondition

def PrimaryDecompositionClosed {I : IdealMultiplicityPackage} (P : PrimaryDecompositionPackage I) : Prop :=
  P.intersectionCondition ∧ P.uniquenessCondition

theorem primary_decomposition_closed_from_evidence {I : IdealMultiplicityPackage} (P : PrimaryDecompositionPackage I) (E : PrimaryDecompositionEvidence P) :
    PrimaryDecompositionClosed P := by
  exact And.intro E.intersectionConditionClosed E.uniquenessConditionClosed

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse