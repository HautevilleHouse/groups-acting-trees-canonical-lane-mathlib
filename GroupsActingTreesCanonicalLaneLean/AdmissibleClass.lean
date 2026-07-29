import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroupActionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse