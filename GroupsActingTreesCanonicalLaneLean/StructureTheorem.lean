import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingTreesCanonicalLaneLean.BassSerreTheory

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure GroupsActingOnTreesPackage where
  tree : Tree
  group : Type u
  action : GroupAction group tree
  edgeTransitive : Prop
  vertexTransitive : Prop
  freeEdgeAction : Prop

structure GroupsActingOnTreesEvidence (G : GroupsActingOnTreesPackage) where
  edgeTransitiveClosed : G.edgeTransitive
  vertexTransitiveClosed : G.vertexTransitive
  freeEdgeActionClosed : G.freeEdgeAction

def GroupsActingOnTreesClosed (G : GroupsActingOnTreesPackage) : Prop :=
  G.edgeTransitive ∧ G.vertexTransitive ∧ G.freeEdgeAction

theorem groups_acting_on_trees_closed_from_evidence (G : GroupsActingOnTreesPackage) (E : GroupsActingOnTreesEvidence G) :
    GroupsActingOnTreesClosed G := by
  exact And.intro E.edgeTransitiveClosed (And.intro E.vertexTransitiveClosed E.freeEdgeActionClosed)

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse