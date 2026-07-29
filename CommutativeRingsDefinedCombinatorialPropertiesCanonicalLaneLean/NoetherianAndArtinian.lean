import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean

structure NoetherianArtinianPackage where
  ring : AdmissibleClass
  ascendingChainCondition : Prop
  descendingChainCondition : Prop
  finiteGeneration : Prop
  compositionSeries : Prop

def NoetherianArtinianClosed (N : NoetherianArtinianPackage) : Prop :=
  N.ascendingChainCondition ∧ N.descendingChainCondition ∧ N.finiteGeneration ∧ N.compositionSeries

structure NoetherianArtinianEvidence (N : NoetherianArtinianPackage) where
  accClosed : N.ascendingChainCondition
  dccClosed : N.descendingChainCondition
  finiteGenerationClosed : N.finiteGeneration
  compositionSeriesClosed : N.compositionSeries

theorem noetherian_artinian_closed_from_evidence (N : NoetherianArtinianPackage)
    (E : NoetherianArtinianEvidence N) : NoetherianArtinianClosed N :=
  And.intro E.accClosed (And.intro E.dccClosed (And.intro E.finiteGenerationClosed E.compositionSeriesClosed))

end CommutativeRingsDefinedCombinatorialPropertiesCanonicalLaneLean
end HautevilleHouse