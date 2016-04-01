module suit where
open import bool 
data Suit : Set where
  hearts : Suit
  spades : Suit
  diamonds : Suit
  clubs : Suit

is-red : Suit → 𝔹
is-red hearts = tt
is-red diamonds = tt
is-red clubs = ff
is-red spades = ff
