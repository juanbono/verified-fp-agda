module ch2-my-bool-thms where
open import ial.bool
open import ial.eq
open import ial.level

{-
  1. Pick a theorem from bool-thms.agda or bool-thms2.agda, and reprove it
-}
-- Different argument order.
𝔹-contradiction : ∀{ℓ} {P : Set ℓ} → ff ≡ tt → P
𝔹-contradiction ()

{-
  2. Prove a theorem missing from bool-thms.agda and bool-thms2.agda
-}
--
imp-intro-tt : ∀{b1 b2 : 𝔹} → b1 ≡ tt → b2 ≡ tt → b1 imp b2 ≡ tt
imp-intro-tt{tt}{tt} b1t b2t = refl
imp-intro-tt{tt}{ff} b1t ()
imp-intro-tt{ff}{_} ()

{-
  3. Which of the following formulas could be proved by refl:
    (a) tt ≡ tt
    (b) ff ≡ ff
    (c) ff ≡ tt
    (d) ff && ff ≡ ~ tt
    (e) tt && x ≡ x, where x is a variable of type 𝔹
    (f) x && tt ≡ x, where x is a variable of type 𝔹
-}

-- a)
a : tt ≡ tt
a = refl

-- b)
b : ff ≡ ff
b = refl

-- c) contradiction

-- d)
d : ff && ff ≡ ~ tt
d = refl

-- e)
e : ∀(x : 𝔹) → tt && x ≡ x
e tt = refl
e ff = refl

-- f)
f : ∀(x : 𝔹) → x && tt ≡ x
f tt = refl
f ff = refl
