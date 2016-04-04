module ch1-my-bool where
open import ial.bool hiding (_imp_)

-- 3) Redefine some function from bool.agda.

-- logical equivalence
-- p → q ≡ ~ p ∨ q 
_imp_ : 𝔹 → 𝔹 → 𝔹
p imp q = ~ p || q
