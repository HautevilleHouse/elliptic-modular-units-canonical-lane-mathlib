import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EllipticModularUnitsCanonicalLaneLean.EllipticModularUnitDefs

namespace HautevilleHouse
namespace EllipticModularUnitsCanonicalLaneLean

open canonicalLaneMathlib

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EllipticModularUnitsCanonicalLaneLean
end HautevilleHouse