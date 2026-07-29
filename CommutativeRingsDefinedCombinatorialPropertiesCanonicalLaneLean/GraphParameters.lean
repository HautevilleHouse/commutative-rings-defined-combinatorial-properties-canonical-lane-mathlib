import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean.CombinatorialRingObjects

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure GraphParameters {R : CombinatorialRing} where
  zeroDivisorGraph : ZeroDivisorGraph R
  associateGraph : AssociateGraph R
  chromaticNumber : ℕ
  cliqueNumber : ℕ
  independenceNumber : ℕ
  parameterRelations : Prop

structure GraphParametersEvidence {R : CombinatorialRing} (P : GraphParameters R) where
  zeroDivisorGraphClosed : ZeroDivisorGraphClosed P.zeroDivisorGraph
  associateGraphClosed : AssociateGraphClosed P.associateGraph
  parameterRelationsClosed : P.parameterRelations

def GraphParametersClosed {R : CombinatorialRing} (P : GraphParameters R) : Prop :=
  ZeroDivisorGraphClosed P.zeroDivisorGraph ∧ AssociateGraphClosed P.associateGraph ∧ P.parameterRelations

theorem graph_parameters_closed_from_evidence {R : CombinatorialRing} (P : GraphParameters R) (E : GraphParametersEvidence P) : GraphParametersClosed P := by
  exact And.intro E.zeroDivisorGraphClosed (And.intro E.associateGraphClosed E.parameterRelationsClosed)

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse
