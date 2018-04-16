
module EndOfChapter where

import Data.List (sort)

{- x :: Int -> Int -}
{- x blah = blah + 20 -}

{- printIt :: IO () -}
{- printIt = putStrLn (show x) -}

data Person = Person Bool deriving Show
printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

data Mood = Blah | Woot deriving (Show, Eq)

instance Ord Mood where
  compare Woot Blah = GT
  compare Blah Woot = LT
  compare _ _ = EQ 

settleDown x = if x == Woot then Blah else x


type Subject = String
type Verb = String
type Object = String

data Sentence =
  Long Subject Verb Object | Short Subject Verb
  deriving (Eq, Show)

s1 = Short "dogs" "drool"
s2 = Long "Julie" "loves" "dogs"

--

data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

instance Ord Papu where
  compare _ _ = EQ 


equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p'

-- Match the Types

i :: Num a => a
{- i :: a -}
i = 1

{- f :: Float -}
{- f :: Fractional a => a -}
f :: RealFrac a => a
f = 1.0

{- freud :: a -> a -}
freud :: Ord a => a -> a
freud x = x

{- freud' :: a -> a -}
freud' :: Int -> Int
{- freud' :: Num a => a -> a -}
freud' x = x

myX = 1 :: Int
sigmund :: Int -> Int
{- sigmund :: a -> a -}
sigmund x = myX

{- Neither works -}
{- sigmund' :: Int -> Int -}
{- sigmund' :: Num a => a -> a -}
sigmund' = myX

{- jung :: Ord a => [a] -> a -}
jung :: [Int] -> Int
jung xs = head (sort xs)

{- young :: [Char] -> Char -}
young :: Ord a => [a] -> a
young xs = head (sort xs)

{- mySort :: [Char] -> [Char] -}
mySort :: Ord a => [a] -> [a]
mySort = sort

{- signifier :: [Char] -> Char -}
signifier :: Ord a => [a] -> a
signifier xs = head (mySort xs)


-- Type-Kwon-Do
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = f a == b

-- Hint: use some arithmetic operation to
-- combine values of type 'b'. Pick one.
arith :: Num b => (a -> b) -> Integer -> a -> b
arith f n a = (f a) ^ n
