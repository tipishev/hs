module GrabBag where

  -- all 4 are equivalent
  mTha x y z = x * y * z
  mThb x y = \z -> x * y * z
  mThc x = \y -> \z -> x * y * z
  mThd = \x -> \y -> \z -> x * y * z


  addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f = \n -> n + 1

  addFive x y = (if x > y then y else x) + 5
  addFive' y = \x -> (if x > y then y else x) + 5
  addFive'' = \y -> \x -> (if x > y then y else x) + 5

  mflip f = \x -> \y -> f y x
  mflip' f x y = f y x


