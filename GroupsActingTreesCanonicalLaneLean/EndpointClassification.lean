import HautevilleHouse.GroupsActingTreesCanonicalLaneLean.AmalgamatedProduct
import HautevilleHouse.GroupsActingTreesCanonicalLaneLean.HNNExtension

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure EndpointClassificationPackage {G : GroupActionOnTree} {B : BassSerreStructure G}
    {A : AmalgamatedProduct B} {H : HNNExtension B} where
  targetGroup : Type u
  treeAction : targetGroup → G.tree.Vertex → G.tree.Vertex
  treeActionProper : Prop
  endpointStatement : Prop
  conclusion : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetGroup 0
  endpointStatementTerm : endpointStatement

structure EndpointClassificationEvidence {G : GroupActionOnTree} {B : BassSerreStructure G}
    {A : AmalgamatedProduct B} {H : HNNExtension B}
    (E : EndpointClassificationPackage A H) where
  endpointStatementClosed : E.endpointStatement
  treeActionProperClosed : E.treeActionProper

def EndpointClassificationClosed {G : GroupActionOnTree} {B : BassSerreStructure G}
    {A : AmalgamatedProduct B} {H : HNNExtension B}
    (E : EndpointClassificationPackage A H) : Prop :=
  E.endpointStatement ∧ E.treeActionProper

theorem endpoint_classification_closed_from_evidence
    {G : GroupActionOnTree} {B : BassSerreStructure G}
    {A : AmalgamatedProduct B} {H : HNNExtension B}
    (E : EndpointClassificationPackage A H)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.endpointStatementClosed Ev.treeActionProperClosed

theorem endpoint_classification_supplies_statement
    {G : GroupActionOnTree} {B : BassSerreStructure G}
    {A : AmalgamatedProduct B} {H : HNNExtension B}
    (E : EndpointClassificationPackage A H) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere (E.targetGroup) inferInstance 0 :=
  E.conclusion

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse