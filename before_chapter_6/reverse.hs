module Reverse where

rvrs :: String -> String
rvrs s = first ++ second ++ third
  where
    first = drop 9 s
    second = take 4 $ drop 5 s
    third = take 5 s

main :: IO ()
main = print $ rvrs "Curry is awesome"
