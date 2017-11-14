module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool coolness
    then putStrLn "eyyy what's shakin'?"
  else
    putStrLn "pshhh."
  where cool v = v == "downright frosty yo" 
