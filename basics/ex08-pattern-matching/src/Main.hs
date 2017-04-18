module Main where

main :: IO ()
main = do
  putStrLn $ function1 0 -- Zero
  putStrLn $ function1 1 -- One
  putStrLn $ function1 2 -- Two
  putStrLn $ function1 3 -- 6
  putStrLn $ function1 4 -- 8
  putStrLn $ function1 5 -- 10
  putStrLn $ function2 (-2) -- Negative
  putStrLn $ function2 (-1) -- Negative
  putStrLn $ function2 0 -- Zero
  putStrLn $ function2 7 -- Positive
  putStrLn $ function3 (-2) -- Negative
  putStrLn $ function3 (-1) -- Negative
  putStrLn $ function3 0 -- Zero
  putStrLn $ function3 7 -- Positive
  putStrLn $ function4 0 -- Zero
  putStrLn $ function4 1 -- One
  putStrLn $ function4 2 -- Unknown
  putStrLn $ function4 7 -- Unknown

function1 :: Integer -> String
function1 0 = "Zero"
function1 1 = "One"
function1 2 = "Two"
function1 x = show $ x * 2

-- function1 is defined differently for different input
function2 :: Integer -> String
function2 x
  | x < 0 = "Negative"
function2 0 = "Zero"
function2 _ = "Positive"

function3 :: Integer -> String
function3 x
  | x < 0 = "Negative"
  | x == 0 = "Zero"
  | otherwise = "Positive"

function4 :: Integer -> String
function4 x =
  case x of
    0 -> "Zero"
    1 -> "One"
    _ -> "Unknown"
