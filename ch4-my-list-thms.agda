module ch4-my-list-thms where

{-
  1. Which of the following formulas are theorems?

  (a) ∀ {ℓ} {A : Set ℓ} (l1 l2 : L A) → l1 ++ l2 ≡ l2 ++ l1

  (b) ∀ {ℓ ℓ′} {A : Set ℓ} {B : Set ℓ′} → (f : A → B) (l : L A) → length (map f l) ≡ suc (length l)

  (c) The repeat function takes a number n and an element a, and constructs a list of length n where all elements are just a.
      So repeat 3 tt evaluates to tt :: tt :: tt :: [].

  ∀ {ℓ} {A : Set ℓ} {p : A → 𝔹} {a : A} {n : ℕ} → p a ≡ ff → filter p (repeat n a) ≡ []

  (d) The is-empty function returns tt if the list it is given is [], and ff otherwise.

  ∀ {ℓ} {A : Set ℓ} (l :  A) → is-empty l ≡ tt → is-empty (reverse l) ≡ ff

  (e) ∀ {ℓ} {A : Set ℓ} (p : A → 𝔹) (l1 l2 : L A) → filter p (l1 ++ l2) ≡ filter p l1 ++ filter p l2

-}
-- TODO
{-
  2. Indicate which of the typings listed for each test term would be accepted by Agda (more than one typing could be accepted for the same term, due     to implicit arguments.)

  (a) test = []
    1. test : L ℕ
    2. test : L L
    3. test : L 𝔹
    4. test : L (L 𝔹)
    5. test : L Set

  (b) test [] = 0
      test (x :: xs) = suc (test xs)
    1. test : ∀ {ℓ} {A : Set ℓ} → L A → ℕ
    2. test : L A → ℕ
    3. test L 𝔹 → ℕ
    4. test : ∀ {ℓ} {A : Set ℓ} → (xs : L A) → length xs

  (c) test f g x = map g (map f x)
    1. test : ∀ {A B C : Set} → (A → B) → (B → C) → L A → L C
    2. test : ∀ {ℓ} {A : Set ℓ} → (A → A) → (A → A) → L A → L A
    3. test : ∀ {A B C : Set } → (B → C) → (A → B) → L A → L C
    4. test : ∀ {ℓ} {A B C : Set ℓ} → (A → B → C) → L A → L (B → C)
    5. test : ∀ {B : Set} {A : L B} → (A → B) → (B → B) → L A → L B
-}
-- TODO
{-
  3. Define a polymorphic function takeWhile which takes in a predicate on type A (i.e, a function of type A → 𝔹), and a list of As, and returns the      longest prefix of the list which satisfies the predicate. (The name of this function, and several in subsequent problems, comes from the Haskell     Prelude.)
-}
-- TODO
{-
4. Prove that if value a satisfies predicate p, then takeWhile p (repeat n a) equal to repeat n a, where takeWhile is the function you defined in
   the previous problem.
-}
-- TODO
{-
  5. Define function take which takes in a natural number n and a list l, and returns a list of the first n elements of 1 (in order), or all
    the elements if n exceeds the length of the list.
-}
-- TODO
{-
  6. list.agda in the IAL already defines a similar function nthTail that returns the part of the list after the first n elements, or the empty list
   if the list has fewer than n elements. Prove that appending the result of take with the result of nthTail for any n (the same value given to both    functions) results in the list again.
-}
-- TODO


