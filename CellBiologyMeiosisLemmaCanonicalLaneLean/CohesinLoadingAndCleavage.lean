import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMeiosisLemmaCanonicalLaneLean

structure CohesinLoadingAndCleavagePackage where
  cohesinRingLoading : Prop
  sisterChromatidCohesion : Prop
  separaseCleavageAtAnaphaseI : Prop
  shugoshinProtectionAtCentromeres : Prop
  rec8CleavageForSeparase : Prop
  separaseActivation : Prop
  cohesinCleavageCompletion : Prop
  chromosomeSeparationPermitted : Prop

structure CohesinLoadingAndCleavageEvidence (C : CohesinLoadingAndCleavagePackage) where
  cohesinRingLoadingClosed : C.cohesinRingLoading
  sisterChromatidCohesionClosed : C.sisterChromatidCohesion
  separaseCleavageAtAnaphaseIClosed : C.separaseCleavageAtAnaphaseI
  shugoshinProtectionAtCentromeresClosed : C.shugoshinProtectionAtCentromeres
  rec8CleavageForSeparaseClosed : C.rec8CleavageForSeparase
  separaseActivationClosed : C.separaseActivation
  cohesinCleavageCompletionClosed : C.cohesinCleavageCompletion
  chromosomeSeparationPermittedClosed : C.chromosomeSeparationPermitted

def CohesinLoadingAndCleavageClosed (C : CohesinLoadingAndCleavagePackage) : Prop :=
  C.cohesinRingLoading ∧ C.sisterChromatidCohesion ∧
  C.separaseCleavageAtAnaphaseI ∧ C.shugoshinProtectionAtCentromeres ∧
  C.rec8CleavageForSeparase ∧ C.separaseActivation ∧
  C.cohesinCleavageCompletion ∧ C.chromosomeSeparationPermitted

theorem cohesin_loading_and_cleavage_closed_from_evidence (C : CohesinLoadingAndCleavagePackage)
    (E : CohesinLoadingAndCleavageEvidence C) : CohesinLoadingAndCleavageClosed C := by
  exact And.intro E.cohesinRingLoadingClosed
    (And.intro E.sisterChromatidCohesionClosed
      (And.intro E.separaseCleavageAtAnaphaseIClosed
        (And.intro E.shugoshinProtectionAtCentromeresClosed
          (And.intro E.rec8CleavageForSeparaseClosed
            (And.intro E.separaseActivationClosed
              (And.intro E.cohesinCleavageCompletionClosed E.chromosomeSeparationPermittedClosed))))))

end CellBiologyMeiosisLemmaCanonicalLaneLean
end HautevilleHouse
