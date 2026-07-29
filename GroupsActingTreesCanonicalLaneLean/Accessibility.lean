import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingTreesCanonicalLaneLean.BassSerreTheory

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure AccessibilityPackage where
  finitelyGeneratedGroup : Type u
  splittingOverFiniteSubgroups : Prop
  accessibleDecomposition : Prop
  termination : Prop

structure AccessibilityEvidence (A : AccessibilityPackage) where
  splittingOverFiniteSubgroupsClosed : A.splittingOverFiniteSubgroups
  accessibleDecompositionClosed : A.accessibleDecomposition
  terminationClosed : A.termination

def AccessibilityClosed (A : AccessibilityPackage) : Prop :=
  A.splittingOverFiniteSubgroups ∧ A.accessibleDecomposition ∧ A.termination

theorem accessibility_closed_from_evidence (A : AccessibilityPackage) (E : AccessibilityEvidence A) : AccessibilityClosed A := by
  exact And.intro E.splittingOverFiniteSubgroupsClosed (And.intro E.accessibleDecompositionClosed E.terminationClosed)

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse
