{-# OPTIONS_GHC -Werror #-}

{- We are missing a case for Banana in the implementation of f
    The compiler doesn't seem to complain unless we explicitly tell
    it we want exhaustive pattern matching. The previous comment
    is something called a "pragma" and it tells the compiler to use
    exhaustive pattern matching in this file.
-}
module Main where

main :: IO ()
main = do
  print shape1 -- x: 3.14
  print shape2 -- x: 5, y: 42, z: 13

data Fruit
  = Apple
  | Orange
  | Banana

f :: Fruit -> String
f Apple = "apple"
f Orange = "orange"

fruit :: Fruit
fruit = Banana

data Shape a
  = Line a
  | Rectangle a
              a
  | Cube a
         a
         a

instance Show a =>
         Show (Shape a) where
  show (Line x) = "x: " ++ show x
  show (Rectangle x y) = "x: " ++ show x ++ ", y: " ++ show y
  show (Cube x y z) = "x: " ++ show x ++ ", y: " ++ show y ++ ", z: " ++ show z

shape1 :: Shape Float
shape1 = Line 3.14

shape2 :: Shape Integer
shape2 = Cube 5 42 13
