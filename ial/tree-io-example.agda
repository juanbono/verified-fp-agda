module ial.tree-io-example where

open import ial.io
open import ial.list
open import ial.maybe
open import ial.string
open import ial.tree
open import ial.unit
open import ial.nat-to-string

errmsg = "Run with a single (small) number as the command-line argument.\n"

processArgs : 𝕃 string → IO ⊤ 
processArgs (s :: []) with string-to-ℕ s 
... | nothing = putStr errmsg
... | just n = putStr (𝕋-to-string ℕ-to-string (perfect-binary-tree n n)) >> putStr "\n"
processArgs _ = putStr errmsg

main : IO ⊤
main = getArgs >>= processArgs 

