import canonicalLaneMathlib.AdmissibleClass

/-!
# Tree Hyperbolicity Package
-/

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure TreeHyperbolicityPackage where
  treeIsGeodesic : Prop
  hyperbolicityConstant : ℝ
  thinTriangles : Prop
  GromovBoundary : Type u
  boundaryAction : Prop
  treeIsHyperbolic : Prop

def TreeHyperbolicityClosed (T : TreeHyperbolicityPackage) : Prop :=
  T.treeIsGeodesic ∧ T.thinTriangles ∧ T.treeIsHyperbolic

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse