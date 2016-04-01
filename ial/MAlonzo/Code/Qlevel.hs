{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Qlevel where
import qualified MAlonzo.RTE
import qualified MAlonzo.Code.Agda.Primitive
name6 = "level.Lift"
d6 a0 a1 a2 = ()
 
newtype T6 a0 = C12 a0
name2 = "level.lone"
d2
  = MAlonzo.RTE.mazCoerce
      (MAlonzo.Code.Agda.Primitive.d5
         (MAlonzo.RTE.mazCoerce MAlonzo.Code.Agda.Primitive.d3))
name1 = "level.level"
d1 = MAlonzo.RTE.mazCoerce MAlonzo.Code.Agda.Primitive.d2
name11 = "level.Lift.lower"
d11 (C12 v0) = MAlonzo.RTE.mazCoerce v0
d11 v0 = MAlonzo.RTE.mazIncompleteMatch name11
name12 = "level.Lift.lift"