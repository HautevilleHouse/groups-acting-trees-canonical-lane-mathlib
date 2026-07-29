import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingTreesCanonicalLaneLean.AmalgamatedProduct

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure HNNExtension (G : Type u) (A : Subgroup G) (t : Type v) where
  stableLetter : t
  isomorphism : A → A
  extensionGroup : Type u

structure HNNActionTree (G : Type u) (T : Tree) (A : GroupAction G T) where
  treeEdge : T.Edge
  isFreeEdge : A.freeEdgeAction
  hnnExtension : HNNExtension G (Subgroup.mk (Set.univ) (by trivial)) (Unit)

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse