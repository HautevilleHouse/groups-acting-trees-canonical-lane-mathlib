import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingTreesCanonicalLaneLean.BassSerreTheory

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure Subgroup (G : Type u) where
  carrier : Set G
  isSubgroup : Group G → Prop

structure AmalgamatedProduct (A B : Type u) (C : Type v) where
  inclusions : C → A × C → B
  freeProductWithAmalgamation : Type u

structure AmalgamatedProductFromAction (G : Type u) (T : Tree) (A : GroupAction G T) where
  vertexGroupStabilizer : (v : T.Vertex) → Subgroup G
  edgeGroupStabilizer : (e : T.Edge) → Subgroup G
  amalgamatedStructure : AmalgamatedProduct (vertexGroupStabilizer (T.incidence e).1) (vertexGroupStabilizer (T.incidence e).2) (edgeGroupStabilizer e)

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse