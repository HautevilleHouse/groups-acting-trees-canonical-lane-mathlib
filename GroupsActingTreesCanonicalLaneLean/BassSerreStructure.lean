import canonicalLaneMathlib.AdmissibleClass

/-!
# Bass–Serre Theory Package
-/

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure BassSerrePackage where
  group : Type u
  tree : Type v
  actionIsByIsometries : Prop
  edgeGroups : Type w
  vertexGroups : Type x
  fundamentalGroup : Type y
  graphOfGroups : Prop
  actionOnTree : Prop
  quotientGraph : Prop

def BassSerreClosed (B : BassSerrePackage) : Prop :=
  B.graphOfGroups ∧ B.actionOnTree ∧ B.quotientGraph

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse