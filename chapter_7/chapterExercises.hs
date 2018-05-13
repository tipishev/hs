module ChapterExercises where
  -- 2
  f :: Char -> String
  f c = [c, c, c]

  g :: String -> [String]
  g s = [s, s]

  -- 3
  f' :: Ord a => a -> a -> Bool
  f' a b = a > b

  -- code 1
  tensDigit :: Integral a => a -> a
  tensDigit x = d
    where xLast = x `div` 10
          d = xLast `mod` 10

  tensDigit' :: Integral a => a -> a
  tensDigit' x = d
    where (tens, _) = divMod x 10
          (_, d) = divMod tens 10

  hundredsDigit = snd . (\x -> divMod x 10) . fst . (\x -> divMod x 100)    

  -- code 2
  -- simple if-then-else
  foldBool :: a -> a -> Bool -> a
  foldBool x y b = if b then x else y 

  -- using case
  foldBool1 :: a -> a -> Bool -> a
  foldBool1 x y b = case b of
    True -> x
    False -> y

  -- using guards
  foldBool2 :: a -> a -> Bool -> a
  foldBool2 x y b
    | b = x 
    | otherwise = y

  -- using pattern matching
  foldBool3 :: a -> a -> Bool -> a
  foldBool3 x y True = x
  foldBool3 x y False = y

  -- code 3
  g3 :: (a -> b) -> (a, c) -> (b, c)
  {- g3 f tuple = (f (fst tuple), snd tuple) -}
  g3 f (a, c) = (f a, c)
