module EnumFromTo where

  eftBool :: Bool -> Bool -> [Bool]
  eftBool from to
    | from > to = []
    | otherwise = from : eftBool (succ from) to

  eftOrder :: Ordering -> Ordering -> [Ordering]
  eftOrder from to
    | from > to = []
    | otherwise = from : eftOrder (succ from) to

  eftInt :: Int -> Int -> [Int]
  eftInt from to
    | from > to = []
    | otherwise = from : eftInt (succ from) to

  eftChar :: Char -> Char -> [Char]
  eftChar from to
    | from > to = []
    | otherwise = from : eftChar (succ from) to

  main :: IO () 
  main = do
    print $ eftBool False True == [False .. True] 
    print $ eftOrder LT GT == [LT .. GT] 
    print $ eftInt 1 10 == [1 .. 10] 
    print $ eftChar 'a' 'z'  == ['a' .. 'z'] 
