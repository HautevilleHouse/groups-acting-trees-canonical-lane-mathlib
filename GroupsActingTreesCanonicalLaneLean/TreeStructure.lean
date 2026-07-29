import GroupsActingTreesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure TreeStructurePackage where
  vertexSet : Type
  edgeSet : Type
  incidence : Prop
  connected : Prop
  acyclic : Prop
  treeConclusion : Prop

structure TreeStructureEvidence (T : TreeStructurePackage) where
  vertexSetClosed : T.vertexSet
  edgeSetClosed : T.edgeSet
  incidenceClosed : T.incidence
  connectedClosed : T.connected
  acyclicClosed : T.acyclic
  treeConclusionClosed : T.treeConclusion

def TreeStructureClosed (T : TreeStructurePackage) : Prop :=
  T.vertexSet ∧ T.edgeSet ∧ T.incidence ∧ T.connected ∧ T.acyclic ∧ T.treeConclusion

theorem tree_structure_closed_from_evidence (T : TreeStructurePackage) (E : TreeStructureEvidence T) :
    TreeStructureClosed T := by
  exact And.intro E.vertexSetClosed (And.intro E.edgeSetClosed (And.intro E.incidenceClosed (And.intro E.connectedClosed (And.intro E.acyclicClosed E.treeConclusionClosed))))

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse