module PatternMatching where

  isItTwo :: Integer -> Bool
  isItTwo 2 = True
  isItTwo _ = False

  f :: (a, b) -> (c, d) -> ((b, d), (a, c))
  f x y = ((snd x, snd y), (fst x, fst y))

  f' :: (a, b) -> (c, d) -> ((b, d), (a, c))
  f' (a, b) (c, d) = ((b, d), (a, c))
