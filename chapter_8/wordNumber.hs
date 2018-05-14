module WordNumber where
  import Data.List (intersperse)

  digitToWord :: Int -> String
  digitToWord n = case n of
    0 -> "zero"
    1 -> "one"
    2 -> "two"
    3 -> "three"
    4 -> "four"
    5 -> "five"
    6 -> "six"
    7 -> "seven"
    8 -> "eight" 
    9 -> "nine"

  divMod10 :: Integral a => a -> (a, a)
  divMod10 = flip divMod 10

  digits :: Int -> [Int]
  digits n = case divMod10 n of
    (0, d) -> [d]
    (rest, d) -> digits rest ++ [d]

  wordNumber :: Int -> String
  wordNumber n = concat $ intersperse "-" $ map digitToWord $ digits n
