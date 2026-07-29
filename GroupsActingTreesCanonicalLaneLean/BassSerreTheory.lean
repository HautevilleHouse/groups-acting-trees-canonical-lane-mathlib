import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingTreesCanonicalLaneLean.GroupActionOnTree

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure BassSerreStructure where
  graphOfGroups : Type u
  fundamentalGroup : Type v
  actionOnTree : GroupActionOnTree
  coveringTree : Prop
  isomorphism : Prop

structure BassSerreEvidence (B : BassSerreStructure) where
  coveringTreeClosed : B.coveringTree
  isomorphismClosed : B.isomorphism
  actionOnTreeClosed : GroupActionOnTreeClosed B.actionOnTree

def BassSerreClosed (B : BassSerreStructure) : Prop :=
  B.coveringTree ∧ B.isomorphism ∧ GroupActionOnTreeClosed B.actionOnTree

theorem bass_serre_closed_from_evidence (B : BassSerreStructure) (E : BassSerreEvidence B) : BassSerreClosed B := by
  exact And.intro E.coveringTreeClosed (And.intro E.isomorphismClosed E.actionOnTreeClosed)

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse
