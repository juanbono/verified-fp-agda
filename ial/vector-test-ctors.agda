module ial.vector-test-ctors where

open ial.import bool
open ial.import list
open ial.import vector

----------------------------------------------------------------------
-- syntax
----------------------------------------------------------------------

test-vector : 𝕃 (𝕍 𝔹 2)
test-vector = (ff :: tt :: []) :: (tt :: ff :: []) :: (tt :: ff :: []) :: []



