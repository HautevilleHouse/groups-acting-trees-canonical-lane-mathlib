import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure GroupActionOnTree where
  group : Type u
  tree : Type v
  action : group → tree → tree
  actionCompat : ∀ (g h : group) (x : tree), action (g * h) x = action g (action h x)
  edgePreserving : Prop

structure GroupActionOnTreeEvidence (A : GroupActionOnTree) where
  actionCompatClosed : ∀ (g h : A.group) (x : A.tree), A.action (g * h) x = A.action g (A.action h x)
  edgePreservingClosed : A.edgePreserving

def GroupActionOnTreeClosed (A : GroupActionOnTree) : Prop :=
  A.edgePreserving

theorem group_action_on_tree_closed_from_evidence (A : GroupActionOnTree) (E : GroupActionOnTreeEvidence A) : GroupActionOnTreeClosed A := by
  exact E.edgePreservingClosed

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse
