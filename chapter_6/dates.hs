module Dates where

data DayOfWeek = Mon | Tue | Wed | Thu | Fri | Sat | Sun deriving Show

-- Date acts as both Type- and Value- constructor
data Date =
  Date DayOfWeek Int deriving Show -- Constructor

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _     = False


instance Eq Date where
  (==) (Date weekday dayOfMonth) (Date otherWeekday otherDayOfMonth) =
     weekday == otherWeekday && dayOfMonth == otherDayOfMonth

{- -- example of non-exhaustive function -}
{- f :: Int -> Bool -}
{- f 1 = True -}
{- f _ = False -}
