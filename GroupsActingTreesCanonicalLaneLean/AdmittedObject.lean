import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure GroupActionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  space : GroupActionSpace
  group : Type
  actionIsProper : Prop
  actionIsCocompact : Prop
  invariantTree : Prop
  conclusion : invariantTree

structure GroupActionEndgameState where
  object : AdmittedObject

def GroupActionWitnessClosed (O : AdmittedObject) : Prop :=
  O.invariantTree

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse