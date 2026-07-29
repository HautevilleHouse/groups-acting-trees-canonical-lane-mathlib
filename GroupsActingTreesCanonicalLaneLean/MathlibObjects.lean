import GroupsActingTreesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GroupsActingTreesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GroupsActingTreesAdmittedObject where
  space : GroupsActingTreesSpace
  groupAction : Prop
  treeStructure : Prop
  groupActionConclusion : Prop
  conclusion : groupActionConclusion

structure GroupsActingTreesEndgameState where
  object : GroupsActingTreesAdmittedObject

def GroupsActingTreesWitnessClosed (O : GroupsActingTreesAdmittedObject) : Prop :=
  O.groupActionConclusion

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse