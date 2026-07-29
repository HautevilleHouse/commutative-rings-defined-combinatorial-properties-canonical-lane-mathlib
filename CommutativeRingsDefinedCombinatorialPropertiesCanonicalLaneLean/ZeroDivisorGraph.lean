import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean.CombinatorialRingObjects

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure ZeroDivisorGraph {R : CombinatorialRing} where
  vertices : Set R.carrier
  edges : R.carrier → R.carrier → Prop
  edgeDef : ∀ a b : R.carrier, edges a b ↔ a ≠ R.zero ∧ b ≠ R.zero ∧ R.multiplication a b = R.zero
  graphProperties : Prop

structure ZeroDivisorGraphEvidence {R : CombinatorialRing} (G : ZeroDivisorGraph R) where
  edgeDefClosed : G.edgeDef
  graphPropertiesClosed : G.graphProperties

def ZeroDivisorGraphClosed {R : CombinatorialRing} (G : ZeroDivisorGraph R) : Prop :=
  G.edgeDef ∧ G.graphProperties

theorem zero_divisor_graph_closed_from_evidence {R : CombinatorialRing} (G : ZeroDivisorGraph R) (E : ZeroDivisorGraphEvidence G) : ZeroDivisorGraphClosed G := by
  exact And.intro E.edgeDefClosed E.graphPropertiesClosed

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse
