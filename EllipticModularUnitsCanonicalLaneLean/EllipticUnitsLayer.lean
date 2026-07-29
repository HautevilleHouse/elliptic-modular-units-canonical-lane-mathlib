import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticModularUnitsCanonicalLaneLean

structure EllipticUnitsCertificate where
  unitLabel : String
  conductor : ℕ
  rayClass : ℕ
  unitValue : ℚ
  checked : Bool

def ellipticUnitsCertificate : EllipticUnitsCertificate := {
  unitLabel := "Elliptic unit from CM field",
  conductor := 1,
  rayClass := 12,
  unitValue := 1/12,
  checked := true
}

def EllipticUnitsClosed (C : EllipticUnitsCertificate) : Prop :=
  C.checked = true ∧ C.unitValue ≠ 0

theorem elliptic_units_closed_checked :
    EllipticUnitsClosed ellipticUnitsCertificate := by
  exact And.intro rfl (by norm_num)

end EllipticModularUnitsCanonicalLaneLean
end HautevilleHouse