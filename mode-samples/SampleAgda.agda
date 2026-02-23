module SampleAgda where

open import Agda.Builtin.Nat
open import Agda.Builtin.Equality

idNat : Nat → Nat
idNat n = n

test : idNat (suc zero) ≡ suc zero
test = refl
