module ch3-my-nat-thms where

open import ial.bool
open import ial.bool-thms
open import ial.bool-thms2
open import ial.eq
open import ial.nat
open import ial.nat-thms
open import ial.neq
open import ial.product
open import ial.product-thms
open import ial.sum


-- 1. Pick some theorems in nat-thms and reprove them yourself.
-- + is commutative
+comm′ : ∀ (x y : ℕ) → x + y ≡ y + x
+comm′ zero y rewrite +0 y = refl
+comm′ (suc x) y rewrite +suc y x | +comm′ x y = refl

+perm′ : ∀ (x y z : ℕ) → x + (y + z) ≡ y + (x + z)
+perm′ zero y z rewrite +comm′ y z  = refl
+perm′ (suc x) y z rewrite +perm′ x y z | +suc y (x + z) = refl


{-
  2. In nat.agda, greather-than and greather-than-or-equal-to orderings are defined in terms of less-than and less-than-or-equal-to.
     Prove versions of theorems like <-trans and <+, but modified to use _>_ instead of _<_ .
-}

aux : ∀ (n : ℕ) → 0 < (suc n) ≡ tt
aux zero = refl
aux (suc x) = refl

<-trans′ : ∀ {x y z : ℕ} → x > y ≡ tt → y > z ≡ tt → x > z ≡ tt
<-trans′ {x} {0} {z} ()
<-trans′ {0} {suc y} {0} ()
<-trans′ {0} {suc y} {suc z} ()
<-trans′ {suc x} {suc y} {0} p1 p2 = aux x
<-trans′ {suc x} {suc y} {suc z} p1 p2 = {!TODO!}
{-
   3. For each of the following functions, which one statement describes best what
      the function f does? There is exactyle one correct answer for each.
-}

-- (a)
f : (n : ℕ) → ℕ
f 0 = 1
f (suc x) = (suc x) * (f x)

{-
  1. Reverses a list
  2. Multiplies input n by itself
  3. Computes n^n
  4. Computes factorial
-}

-- Answer: 4. f n computes n's factorial

-- (b)
f′ : ℕ → 𝔹
f′′ : (n : ℕ) → 𝔹
f′′ 0 = tt
f′′ (suc x) = f′ x
f′ 0 = ff
f′ (suc x) = f′′ x

{-
  1. Returns tt (boolean true) iff n is even
  2. Returns tt iff n is 0
  3. Return tt iff n is odd
  4. Returns the length of n
  5. Computes primality of n
-}

-- Answer: 1. f′′ returns tt iff n is even. Let f′ = f1 and f′′ = f2:
f1 : ℕ → 𝔹
f2 : (n : ℕ) → 𝔹
f2 0 = is-even 0
f2 (suc x) = is-odd x
f1 0 = ff
f1 (suc x) = is-even x

