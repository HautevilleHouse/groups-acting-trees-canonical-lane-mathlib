import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure Tree where
  Vertex : Type u
  Edge : Type v
  incidence : Edge → Vertex × Vertex
  acyclic : Prop

structure GroupAction (G : Type u) (T : Tree) where
  action : G → T.Vertex → T.Vertex
  edgeAction : G → T.Edge → T.Edge
  compatibility : ∀ (g : G) (e : T.Edge), T.incidence (edgeAction g e) = (action g (T.incidence e).1, action g (T.incidence e).2)
  groupLaw : ∀ (g h : G) (v : T.Vertex), action (g * h) v = action g (action h v)

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse