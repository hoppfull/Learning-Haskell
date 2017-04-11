module Main where

main :: IO ()
main = do
  putStrLn $ show $ var -- 5
  putStrLn $ show $ func0 7 -- 14
  putStrLn $ show $ func1 3 2 -- 7
  putStrLn $ show $ func2 11 17.5 -- 74.5
  putStrLn $ show $ higherOrderFunction 42 func0 -- 56

var :: Int -- type signature of variable x
var = 5

func0 :: Int -> Int -- type signature of function func0
func0 x = x * 2

func1 :: Int -> Int -> Int -- type signature of function func1
func1 x y = x + (y * 2)
{-
  It is recommended to provide explicit type declaration to make code
  more self documenting and easier to read.

  Type signature of a function: type -> type -> type -> type
  The last type is the returned value of the function. The preceding
  ones are the types of the parameters for the function.
-}

func2 :: Num a => a -> a -> a -- type signature of function func2
func2 x y = x * 2 + y * 3
{-
  This type signature specifies a generic type 'a' that inherites from
  type class Num. Basically it means that x and y are any numbers and
  func2 returns any kind of number. These numbers could be integers,
  floats, integers, fractionals or whatever. More on type classes later
-}

higherOrderFunction :: Int -> (Int -> Int) -> Int
higherOrderFunction x f = x + (f 7)
{-
  First parameter is an Int
  Second parameter is an Int -> Int, i.e a function
  higherOrderFunction returns an Int
-}

ls0 :: [Int] -- type signature for a list of ints
ls0 = [1..10]

name :: [Char] -- a string is just a list of Chars (characters)
name = "Huey"

pair :: (Int, [Char]) -- Type signature for a tuple, (a pair)
pair = (42, "The answer")
