import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EllipticModularUnitsCanonicalLaneLean.SiegelUnitsLayer
import HautevilleHouse.EllipticModularUnitsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EllipticModularUnitsCanonicalLaneLean

open canonicalLaneMathlib

def ConstrainedEllipticModularUnitClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem elliptic_modular_unit_endgame (A : AdmissibleClass) :
    ConstrainedEllipticModularUnitClosure A := by
  apply And.intro
  · exact bridge_from_admissible_class A
  · exact gate_from_admissible_class A

def siegelUnitAdmissibleClass : AdmissibleClass := {
  object := admittedEllipticModularUnitObject,
  endpointSatisfied := SiegelUnitsLayerClosed siegelUnitsLayerCertificate,
  remainderRecorded := True,
  gateWitness := Or.inl (by
    -- we need to prove endpointSatisfied holds for this particular A
    unfold endpointSatisfied
    -- we know edge case: endpointSatisfied = SiegelUnitsLayerClosed siegelUnitsLayerCertificate, which is true
    exact siegel_units_layer_closed_checked)
}

theorem siegel_unit_closure_checked :
    ConstrainedEllipticModularUnitClosure siegelUnitAdmissibleClass := by
  apply elliptic_modular_unit_endgame siegelUnitAdmissibleClass

end EllipticModularUnitsCanonicalLaneLean
end HautevilleHouse