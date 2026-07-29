import HautevilleHouse.GroupsActingTreesCanonicalLaneLean.GroupActionOnTree

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure QuotientGraph (G : Type) [Group G] (T : TreeStructure) (A : GroupActionOnTree G T) where
  vertexOrbits : Set (Set T.vertices)
  edgeOrbits : Set (Set T.edges)
  incidence : edgeOrbits → vertexOrbits × vertexOrbits
  wellDefined : ∀ (eOrbit : edgeOrbits), ∃ (e : T.edges),
    (e ∈ {e' | T.incidence e' = (T.incidence e)}) ∧
    (∀ g : G, A.action g (T.incidence e).1 ∈ (incidence eOrbit).1) ∧
    (∀ g : G, A.action g (T.incidence e).2 ∈ (incidence eOrbit).2)

definition quotient_graph_closed (G : Type) [Group G] (T : TreeStructure) (A : GroupActionOnTree G T)
    (Q : QuotientGraph G T A) : Prop :=
  Q.wellDefined

theorem quotient_graph_closed_from_props (G : Type) [Group G] (T : TreeStructure) (A : GroupActionOnTree G T)
    (Q : QuotientGraph G T A) (hwell : Q.wellDefined) :
    quotient_graph_closed G T A Q := hwell

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse