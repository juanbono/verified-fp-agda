{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Agda.Primitive where
import qualified MAlonzo.RTE
name5 = "Agda.Primitive.lsuc"
 
d5 :: (() -> ())
d5 = (\_ -> ())
name2 = "Agda.Primitive.Level"
d2
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Primitive.Level"
name3 = "Agda.Primitive.lzero"
 
d3 :: ()
d3 = ()
name8 = "Agda.Primitive._\8852_"
 
d8 :: (() -> (() -> ()))
d8 = (\_ _ -> ())