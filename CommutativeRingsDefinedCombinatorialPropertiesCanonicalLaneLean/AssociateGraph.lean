import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean.CombinatorialRingObjects

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure AssociateGraph {R : CombinatorialRing} where
  vertices : Set R.carrier
  edges : R.carrier → R.carrier → Prop
  edgeDef : ∀ a b : R.carrier, edges a b ↔ (∃ u : R.carrier, R.multiplication u a = b ∧ ∃ v : R.carrier, R.multiplication v b = a) ∧ a ≠ R.zero ∧ b ≠ R.zero
  graphProperties : Prop

structure AssociateGraphEvidence {R : CombinatorialRing} (G : AssociateGraph R) where
  edgeDefClosed : G.edgeDef
  graphPropertiesClosed : G.graphProperties

def AssociateGraphClosed {R : CombinatorialRing} (G : AssociateGraph R) : Prop :=
  G.edgeDef ∧ G.graphProperties

theorem associate_graph_closed_from_evidence {R : CombinatorialRing} (G : AssociateGraph R) (E : AssociateGraphEvidence G) : AssociateGraphClosed G := by
  exact And.intro E.edgeDefClosed E.graphPropertiesClosed

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse
