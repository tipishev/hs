module Bottom where
  f :: Bool -> Int
  f True = error "blah"
  f False = 0
