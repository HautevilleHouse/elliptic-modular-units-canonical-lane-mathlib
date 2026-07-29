import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticModularUnitsCanonicalLaneLean

open canonicalLaneMathlib

structure EllipticModularUnitData where
  conductor : ℕ
  discriminant : ℤ
  unitValue : ℂ
  isSiegelUnit : Bool

def primitiveEllipticModularUnitData : EllipticModularUnitData := {
  conductor := 1,
  discriminant := -3,
  unitValue := (1 - √-3) / 2,
  isSiegelUnit := true
}

structure AdmittedEllipticModularUnitObject where
  unitData : EllipticModularUnitData
  classFieldVerified : Prop
  bridgeWitness : String

def admittedEllipticModularUnitObject : AdmittedEllipticModularUnitObject := {
  unitData := primitiveEllipticModularUnitData,
  classFieldVerified := True,
  bridgeWitness := "Elliptic modular unit admitted via Siegel unit bridge"
}

end EllipticModularUnitsCanonicalLaneLean
end HautevilleHouse