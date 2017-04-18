module Main where

main :: IO ()
main = do
  putStrLn $ show $ f 5 -- 10
  putStrLn $ show $ g 42 3 -- 48

f x = x * 2 -- function declaration of f (with arity 1)

g x y = x + (y * 2) -- function declaration of g (with arity 2)
