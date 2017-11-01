module Palindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome value = reverse value == value
