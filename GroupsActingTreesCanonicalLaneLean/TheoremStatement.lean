import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure GroupsActingAdmittedObject where
  tree : Type u
  groupAction : Type v
  actionProperties : Prop
  conclusion : Prop

structure GroupsActingEndgameState where
  object : GroupsActingAdmittedObject

def GroupsActingWitnessClosed (O : GroupsActingAdmittedObject) : Prop :=
  O.conclusion

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse