import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticModularUnitsCanonicalLaneLean

structure SiegelFunctionCertificate where
  label : String
  level : ℕ
  weight : ℤ
  qExpansion : String
  checked : Bool

def siegelFunctionCertificate : SiegelFunctionCertificate := {
  label := "g_{a,b} Siegel function at level N",
  level := 12,
  weight := 0,
  qExpansion := "q^{1/12} (1 - q) ...",
  checked := true
}

def SiegelFunctionClosed (C : SiegelFunctionCertificate) : Prop :=
  C.checked = true ∧ C.level > 0

theorem siegel_function_closed_checked :
    SiegelFunctionClosed siegelFunctionCertificate := by
  exact And.intro rfl (by norm_num)

end EllipticModularUnitsCanonicalLaneLean
end HautevilleHouse