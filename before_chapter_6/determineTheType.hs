{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

a :: (a -> c) -> a -> a
a _ x = x

