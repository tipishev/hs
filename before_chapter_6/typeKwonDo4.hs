module TypeKwonDo3 where

data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
{- xform (x, y) = (yz y, xz x) -}
xform (x, y) = (xz x, yz y)
