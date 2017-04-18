module Main where

main :: IO ()
main = do
  print $ head ls0 -- 1
  print $ tail ls0 -- [2, 3]
  print $ ls2 !! 2 -- 5
  print $ length ls2 -- 5
  print $ null ls2 -- False
  print $ null [] -- True
  print $ ls0 == [1, 2, 3] -- True
  print $ ls0 == ls1 -- False
  print $ sum ls2 -- 25
  print $ elem 7 ls2 -- True
  print $ elem 10 ls2 -- False

ls0 = [1, 2, 3] -- [1, 2, 3]

ls1 = [1 .. 10] -- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

ls2 = [1,3 .. 10] -- [1, 3, 5, 7, 9]
{-
  http://learnyouahaskell.com/starting-out#an-intro-to-lists
-}
