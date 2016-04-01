{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types #-}
module MAlonzo.RTE where
import Unsafe.Coerce
 
{-# INLINE [1] mazCoerce #-}
mazCoerce = Unsafe.Coerce.unsafeCoerce
 
{-# RULES
"coerce-id" forall (x :: a) . mazCoerce x = x
 #-}
 
data QName a b = QName{nameId, moduleId :: Integer, qnameType :: a,
                       qnameDefinition :: b}
 
instance Eq (QName a b) where
        QName a b _ _ == QName c d _ _ = (a, b) == (c, d)
 
mazIncompleteMatch :: String -> a
mazIncompleteMatch s
  = error
      ("MAlonzo Runtime Error: incomplete pattern matching: " ++ s)