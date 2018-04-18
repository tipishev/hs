module Binding where

bindExp :: Integer -> String
bindExp x =
  let y = 5 in "integer was: " ++ show x
               ++ " and locally-defined y was: " ++ show y
