import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingTreesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GroupActionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GroupsActingTreesCanonicalLaneLean
end HautevilleHouse