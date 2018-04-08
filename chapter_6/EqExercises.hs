module EqExercises where

data TisAnInteger =
  TisAnInteger Integer deriving Show

instance Eq TisAnInteger where
  (==) (TisAnInteger int) (TisAnInteger int') = int == int'

--

data TwoIntegers =
  TwoIntegers Integer Integer deriving Show

instance Eq TwoIntegers where
  (==) (TwoIntegers a b) (TwoIntegers a' b') = (a, b) == (a', b')


--

data StringOrInt =
  TisAnInt Int
  | TisAString String deriving Show


instance Eq StringOrInt where
  (==) (TisAnInt n) (TisAnInt n') = n == n'
  (==) (TisAString s) (TisAString s') = s == s'
  (==) _ _ = False

--

data Pair a =
  Pair a a deriving Show

instance Eq a => Eq (Pair a) where
  (==) (Pair a b) (Pair a' b') = a == a' && b == b'

--

data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a b) (Tuple a' b') = (a, b) == (a', b')

--

data Which a =
  ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') = a == a'
  (==) (ThatOne a) (ThatOne a') = a == a'
  (==) _ _ = False
