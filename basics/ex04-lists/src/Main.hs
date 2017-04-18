module Main where

main :: IO ()
main = do
  putStrLn $ show $ head ls0 -- 1
  putStrLn $ show $ tail ls0 -- [2, 3]
  putStrLn $ show $ ls2 !! 2 -- 5
  putStrLn $ show $ length ls2 -- 5
  putStrLn $ show $ null ls2 -- False
  putStrLn $ show $ null [] -- True
  putStrLn $ show $ ls0 == [1, 2, 3] -- True
  putStrLn $ show $ ls0 == ls1 -- False
  putStrLn $ show $ sum ls2 -- 25
  putStrLn $ show $ elem 7 ls2 -- True
  putStrLn $ show $ elem 10 ls2 -- False

ls0 = [1, 2, 3] -- [1, 2, 3]

ls1 = [1 .. 10] -- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

ls2 = [1,3 .. 10] -- [1, 3, 5, 7, 9]
{-
  http://learnyouahaskell.com/starting-out#an-intro-to-lists
-}
