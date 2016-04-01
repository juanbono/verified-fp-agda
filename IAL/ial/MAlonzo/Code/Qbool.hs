{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.Code.Qbool where
import qualified MAlonzo.RTE
import qualified MAlonzo.Code.Qlevel
name3 = "bool.\120121.ff"
 
d3 :: Bool
d3 = False
name6 = "bool._&&_"
d6 (True) v0 = MAlonzo.RTE.mazCoerce v0
d6 v0 v1
  = MAlonzo.RTE.mazCoerce
      (d_1_6 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1))
  where d_1_6 (False) v0 = MAlonzo.RTE.mazCoerce False
        d_1_6 v0 v1 = MAlonzo.RTE.mazIncompleteMatch name6
name9 = "bool._||_"
d9 (True) v0 = MAlonzo.RTE.mazCoerce True
d9 v0 v1
  = MAlonzo.RTE.mazCoerce
      (d_1_9 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1))
  where d_1_9 (False) v0 = MAlonzo.RTE.mazCoerce v0
        d_1_9 v0 v1 = MAlonzo.RTE.mazIncompleteMatch name9
name4 = "bool.bool"
d4 = MAlonzo.RTE.mazCoerce d1
name2 = "bool.\120121.tt"
 
d2 :: Bool
d2 = True
name5 = "bool.~_"
d5 (True) = MAlonzo.RTE.mazCoerce False
d5 v0 = MAlonzo.RTE.mazCoerce (d_1_5 (MAlonzo.RTE.mazCoerce v0))
  where d_1_5 (False) = MAlonzo.RTE.mazCoerce True
        d_1_5 v0 = MAlonzo.RTE.mazIncompleteMatch name5
name32 = "bool._nand_"
d32 (True) (True) = MAlonzo.RTE.mazCoerce False
d32 v0 v1
  = MAlonzo.RTE.mazCoerce
      (d_1_32 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1))
  where d_1_32 (True) (False) = MAlonzo.RTE.mazCoerce True
        d_1_32 v0 v1
          = MAlonzo.RTE.mazCoerce
              (d_2_32 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1))
        d_2_32 (False) (True) = MAlonzo.RTE.mazCoerce True
        d_2_32 v0 v1
          = MAlonzo.RTE.mazCoerce
              (d_3_32 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1))
        d_3_32 (False) (False) = MAlonzo.RTE.mazCoerce True
        d_3_32 v0 v1 = MAlonzo.RTE.mazIncompleteMatch name32
name14 = "bool.if_then_else_"
d14 v0 v1 (True) v2 v3 = MAlonzo.RTE.mazCoerce v2
d14 v0 v1 v2 v3 v4
  = MAlonzo.RTE.mazCoerce
      (d_1_14 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1)
         (MAlonzo.RTE.mazCoerce v2)
         (MAlonzo.RTE.mazCoerce v3)
         (MAlonzo.RTE.mazCoerce v4))
  where d_1_14 v0 v1 (False) v2 v3 = MAlonzo.RTE.mazCoerce v3
        d_1_14 v0 v1 v2 v3 v4 = MAlonzo.RTE.mazIncompleteMatch name14
name33 = "bool._nor_"
d33 v0 v1
  = MAlonzo.RTE.mazCoerce
      (d5
         (MAlonzo.RTE.mazCoerce
            (d9 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1))))
name1 = "bool.\120121"
d1 = ()
 
check2 :: Bool
check2 = True
 
check3 :: Bool
check3 = False
 
cover1 :: Bool -> ()
cover1 x
  = case x of
        True -> ()
        False -> ()
name28 = "bool._xor_"
d28 (True) (False) = MAlonzo.RTE.mazCoerce True
d28 v0 v1
  = MAlonzo.RTE.mazCoerce
      (d_1_28 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1))
  where d_1_28 (False) (True) = MAlonzo.RTE.mazCoerce True
        d_1_28 v0 v1
          = MAlonzo.RTE.mazCoerce
              (d_2_28 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1))
        d_2_28 (True) (True) = MAlonzo.RTE.mazCoerce False
        d_2_28 v0 v1
          = MAlonzo.RTE.mazCoerce
              (d_3_28 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1))
        d_3_28 (False) (False) = MAlonzo.RTE.mazCoerce False
        d_3_28 v0 v1 = MAlonzo.RTE.mazIncompleteMatch name28
name23 = "bool.if*_then_else_"
d23 v0 v1 v2 (True) v3 v4 = MAlonzo.RTE.mazCoerce v3
d23 v0 v1 v2 v3 v4 v5
  = MAlonzo.RTE.mazCoerce
      (d_1_23 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1)
         (MAlonzo.RTE.mazCoerce v2)
         (MAlonzo.RTE.mazCoerce v3)
         (MAlonzo.RTE.mazCoerce v4)
         (MAlonzo.RTE.mazCoerce v5))
  where d_1_23 v0 v1 v2 (False) v3 v4 = MAlonzo.RTE.mazCoerce v4
        d_1_23 v0 v1 v2 v3 v4 v5 = MAlonzo.RTE.mazIncompleteMatch name23
name29 = "bool._imp_"
d29 (True) v0 = MAlonzo.RTE.mazCoerce v0
d29 v0 v1
  = MAlonzo.RTE.mazCoerce
      (d_1_29 (MAlonzo.RTE.mazCoerce v0) (MAlonzo.RTE.mazCoerce v1))
  where d_1_29 (False) v0 = MAlonzo.RTE.mazCoerce True
        d_1_29 v0 v1 = MAlonzo.RTE.mazIncompleteMatch name29
mazBoolToHBool = let { f True = True; f False = False; } in f
mazHBoolToBool = let { f True = True; f False = False; } in f