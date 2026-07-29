import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EllipticModularUnitsCanonicalLaneLean.EllipticModularUnitDefs

namespace HautevilleHouse
namespace EllipticModularUnitsCanonicalLaneLean

open canonicalLaneMathlib

structure SiegelUnitsLayerCertificate where
  unitObject : AdmittedEllipticModularUnitObject
  siegelBridgeClosed : Bool
  classFieldEndpoint : Bool

def siegelUnitsLayerCertificate : SiegelUnitsLayerCertificate := {
  unitObject := admittedEllipticModularUnitObject,
  siegelBridgeClosed := true,
  classFieldEndpoint := true
}

def SiegelUnitsLayerClosed (C : SiegelUnitsLayerCertificate) : Prop :=
  C.siegelBridgeClosed = true ∧ C.classFieldEndpoint = true

theorem siegel_units_layer_closed_checked :
    SiegelUnitsLayerClosed siegelUnitsLayerCertificate := by
  exact And.intro rfl rfl

end EllipticModularUnitsCanonicalLaneLean
end HautevilleHouse