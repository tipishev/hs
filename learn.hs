module Learn where

-- let x = 7; y = negate x; z = y * 10 in z / x + y 
foo = z / x + y
  where
    z = y * 10
    y = negate x
    x = 7
