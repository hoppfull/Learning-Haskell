module Main where

main :: IO ()
main = do
  putStrLn $ show $ ls0 -- [4, 10, 16, 22, 28, 34, 40]
  putStrLn $ show $ ls1 -- [5, 17, 29, 41]

ls0 = [x * 2 | x <- [2,5 .. 20]] -- take all numbers [2, 5, 8, 11, 14, 17, 20] and multiply them by 2

ls1 = [x + 1 | x <- ls0, x `mod` 4 == 0] -- take all numbers ls0 that are divisible by 4 and add 1 to them
