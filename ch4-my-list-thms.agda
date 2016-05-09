module ch4-my-list-thms where

open import list
open import eq
open import list-thms
open import list-thms2
open import bool
open import nat
open import product-thms
open import product

{-
  1. Which of the following formulas are theorems?

  (a) ∀ {ℓ} {A : Set ℓ} (l1 l2 : 𝕃 A) → l1 ++ l2 ≡ l2 ++ l1

  (b) ∀ {ℓ ℓ′} {A : Set ℓ} {B : Set ℓ′} → (f : A → B) (l : 𝕃 A) → length (map f l) ≡ suc (length l)

  (c) The repeat function takes a number n and an element a, and constructs a list of length n where all elements are just a.
      So repeat 3 tt evaluates to tt :: tt :: tt :: [].

      ∀ {ℓ} {A : Set ℓ} {p : A → 𝔹} {a : A} {n : ℕ} → p a ≡ ff → filter p (repeat n a) ≡ []

  (d) The is-empty function returns tt if the list it is given is [], and ff otherwise.

      ∀ {ℓ} {A : Set ℓ} (l : 𝕃 A) → is-empty l ≡ tt → is-empty (reverse l) ≡ ff

  (e) ∀ {ℓ} {A : Set ℓ} (p : A → 𝔹) (l1 l2 : 𝕃 A) → filter p (l1 ++ l2) ≡ filter p l1 ++ filter p l2

-}
-- (a) Not a theorem. (++) is not commutative
-- (b) Not a theorem. length (map f l) ≡ length l
-- map preserves list length
b : ∀ {ℓ ℓ′} {A : Set ℓ} {B : Set ℓ′} → (f : A → B) (l : 𝕃 A) → length (map f l) ≡ (length l)
b f [] = refl
b f (x :: xs) rewrite b f xs = refl

-- (c)
c : ∀ {ℓ} {A : Set ℓ} {p : A → 𝔹} {a : A} {n : ℕ} → p a ≡ ff → filter p (repeat n a) ≡ []
c {_}{_}{cond}{a}{0} p = refl
c {_}{_}{cond}{a}{suc x} p rewrite c {_}{_}{cond}{a}{x} p | p = refl

-- (d) Not a theorem. is-empty l ≡ is-empty (reverse l)
d : ∀ {ℓ} {A : Set ℓ} (l : 𝕃 A) → is-empty l ≡ tt → is-empty (reverse l) ≡ tt
d [] p = refl
d (x :: xs) ()

-- (e)
e : ∀ {ℓ} {A : Set ℓ} (p : A → 𝔹) (l1 l2 : 𝕃 A) → filter p (l1 ++ l2) ≡ filter p l1 ++ filter p l2
e p [] l2 = refl
e p (x :: xs) l2 with p x
e p (x :: xs) l2 | tt
  rewrite e p xs l2  = refl
e p (x :: xs) l2 | ff
  rewrite e p xs l2 = refl

{-
  2. Indicate which of the typings listed for each test term would be accepted by Agda (more than one typing could be accepted for the same term, due     to implicit arguments.)

  (a) test = []
    1. test : 𝕃 ℕ        -- Accepted
    2. test : 𝕃 𝕃       -- No accepted
    3. test : 𝕃 𝔹       -- Accepted
    4. test : 𝕃 (𝕃 𝔹)   -- Accepted
    5. test : 𝕃 Set      -- Accepted

  (b) test [] = 0
      test (x :: xs) = suc (test xs)
    1. test : ∀ {ℓ} {A : Set ℓ} → 𝕃 A → ℕ                  -- Accepted
    2. test : 𝕃 A → ℕ                                      -- No accepted
    3. test 𝕃 𝔹 → ℕ                                       -- No accepted
    4. test : ∀ {ℓ} {A : Set ℓ} → (xs : 𝕃 A) → length xs   -- Accepted

  (c) test f g x = map g (map f x)
    1. test : ∀ {A B C : Set} → (A → B) → (B → C) → 𝕃 A → 𝕃 C         -- Accepted (?)
    2. test : ∀ {ℓ} {A : Set ℓ} → (A → A) → (A → A) → 𝕃 A → 𝕃 A       -- Accepted
    3. test : ∀ {A B C : Set } → (B → C) → (A → B) → 𝕃 A → 𝕃 C        -- No accepted
    4. test : ∀ {ℓ} {A B C : Set ℓ} → (A → B → C) → 𝕃 A → 𝕃 (B → C)   -- No accepted
    5. test : ∀ {B : Set} {A : 𝕃 B} → (A → B) → (B → B) → 𝕃 A → 𝕃 B  -- Accepted (?)
-}

{-
  3. Define a polymorphic function takeWhile which takes in a predicate on type A (i.e, a function of type A → 𝔹), and a list of As, and returns the      longest prefix of the list which satisfies the predicate. (The name of this function, and several in subsequent problems, comes from the Haskell     Prelude.)
-}
takeWhile : ∀ {ℓ} {A : Set ℓ} → (A → 𝔹) → 𝕃 A → 𝕃 A
takeWhile p [] = []
takeWhile p (x :: xs) = if p x then x :: (takeWhile p xs) else []

{-
  4. Prove that if value a satisfies predicate p, then takeWhile p (repeat n a) equal to repeat n a, where takeWhile is the function you defined in
     the previous problem.
-}
takeWhile-repeat : ∀ {ℓ} {A : Set ℓ} {p : A → 𝔹} {a : A} {n : ℕ} → p a ≡ tt → takeWhile p (repeat n a) ≡ repeat n a
takeWhile-repeat {_}{_}{cond}{a}{0} p rewrite p = refl
takeWhile-repeat {_}{_}{cond}{a}{suc x} p rewrite takeWhile-repeat {_} {_}{cond}{a}{x} p | p = refl

{-
  5. Define function take which takes in a natural number n and a list l, and returns a list of the first n elements of l (in order), or all
    the elements if n exceeds the length of the list.
-}
take : ∀ {ℓ} {A : Set ℓ} → ℕ →  𝕃 A →  𝕃 A
take 0 l = []
take (suc n) [] = []
take (suc n) (x :: xs) = if (suc n) > length (x :: xs) then (x :: xs) else x :: (take n xs)

{-
  6. list.agda in the IAL already defines a similar function nthTail that returns the part of the list after the first n elements, or the empty list
   if the list has fewer than n elements. Prove that appending the result of take with the result of nthTail for any n (the same value given to both    functions) results in the list again.
-}

aux : ∀ {ℓ} {A : Set ℓ} {x : A} (l1 l2 : 𝕃 A) → x :: l1 ≡ x :: l2 → l1 ≡ l2
aux{_}{A}{z} [] [] p = refl
aux{_}{_}{z} [] (y :: ys) ()
aux{_}{_}{z} (x :: xs) [] ()
aux{ℓ}{A}{z} (x :: xs) (y :: ys) p =  {!!}

take-nthTail : ∀ {ℓ} {A : Set ℓ} (n : ℕ) (l : 𝕃 A) → (take n l) ++ (nthTail n l) ≡ l
take-nthTail 0 l = refl
take-nthTail (suc n) [] = refl
take-nthTail (suc n) (x :: xs) with (nthTail n xs)
take-nthTail (suc n) (x :: xs) | [] with keep (length xs < n)
take-nthTail (suc n) (x :: xs) | [] | tt , p2
  rewrite p2 | take-nthTail n xs | ++[] xs = refl
take-nthTail (suc n) (x :: xs) | [] | ff , ()
take-nthTail (suc n) (x :: xs) | l with keep (length xs < n)
take-nthTail (suc n) (x :: xs) | l | tt , ()
take-nthTail (suc n) (x :: xs) | l | ff , p2 with keep (is-empty l)
take-nthTail (suc n) (x :: xs) | l | ff , p2 | tt , p3 with keep (take n xs)
take-nthTail (suc n) (x :: xs) | l | ff , p2 | tt , p3 | [] , ()
take-nthTail (suc n) (x :: xs) | l | ff , p2 | tt , p3 | ys , p4
  rewrite p2 | p2 | p4 | is-empty-[] l p3 | ++[] ys = {!!} --aux ys xs
take-nthTail (suc n) (x :: xs) | l | ff , p2 | ff , ()
