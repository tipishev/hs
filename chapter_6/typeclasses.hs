module TypeClasses where

divideThenAdd :: Fractional a => a -> a -> a
divideThenAdd x y = (x / y) + 1

divideThenAdd' :: (Fractional a, Num a) => a -> a -> a
divideThenAdd' x y = (x / y) + 1
