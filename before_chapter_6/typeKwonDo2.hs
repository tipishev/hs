module TypeKwonDo2 where

data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

y :: A -> C
y = undefined

e :: A -> C
{- e = y  -}
e = w . q
