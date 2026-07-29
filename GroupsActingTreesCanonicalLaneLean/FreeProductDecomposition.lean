import canonicalLaneMathlib.AdmissibleClass

/-!
# Free Product Decomposition Package
-/

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure FreeProductDecompositionPackage (B : BassSerrePackage) where
  vertexStabilizers : Type u
  edgeStabilizers : Type v
  amalgamatedFreeProduct : Prop
  HNNExtension : Prop
  decompositionGivenByAction : Prop
  inducedSplitting : Prop

def FreeProductDecompositionClosed (F : FreeProductDecompositionPackage) : Prop :=
  F.amalgamatedFreeProduct ∧ F.HNNExtension ∧ F.decompositionGivenByAction

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse