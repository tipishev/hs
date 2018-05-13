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

  -- FIXME handle negative numbers 
  multi :: (Integral a) => a -> a -> a
  multi a 1 = a
  multi a b = a + multi a (b - 1)
