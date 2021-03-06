module Exercises where
  func :: [a] -> [a] -> [a]
  func x y = x ++ y

  cattyConny :: String -> String -> String
  cattyConny x y = x ++ " mrow " ++ y

  flippy ::  String -> String -> String
  flippy = flip cattyConny
  
  appedCatty :: String -> String
  appedCatty = cattyConny "oops"
  
  frappe :: String -> String
  frappe = flippy "haha"

  -- recursion 2
  sumTo :: (Eq a, Num a) => a -> a
  sumTo 0 = 0
  sumTo n = n + sumTo(n-1)

  -- recursion 3
  multi :: Integral a => a -> a -> a
  multi a b
    | b == 1 = a
    | b == 0 = 0
    | a > 0 && b < 0 = - multi a (-b)
    | a < 0 && b > 0 = multi b a
    | a < 0 && b < 0 = multi (-a) (-b)
    | otherwise = a + multi a (b - 1)

  -- Fixing dividedBy
  data DividedResult =
    Result Integer
    | DividedByZero deriving (Show, Eq)


  neg:: DividedResult -> DividedResult
  neg DividedByZero = DividedByZero
  neg (Result x) = Result (-x)

  div' :: (Real a, Enum a) => a -> a -> DividedResult
  div' numerator denominator
     | denominator == 0 = DividedByZero
     | numerator < 0 && denominator < 0 = div' (-numerator) (-denominator)
     | numerator > 0 && denominator < 0 = neg $ div' numerator (-denominator)
     | numerator < 0 && denominator > 0 = neg $ div' (-numerator) denominator
     | otherwise = go numerator denominator 0
   where go n d count
          | n < d = Result count
          | otherwise = go (n - d) d (count + 1)
