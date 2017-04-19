module Main where

main :: IO ()
main = do
  print box1 -- Box "hello"
  print box2 -- Box 5
  print $ f2 10 -- 220
  print $ id `fmap` box1 -- Box "hello"
  print $ id `fmap` box2 -- Box 5 
  print $ id `fmap` f2 $ 10 -- 220
  print $ fmap (f1 . f2) box2 -- Box 310
  print $ fmap f1 . fmap f2 $ box2 -- Box 310

{- Functors are types that implement fmap. These types
    could be functions or type constructors.
-}
newtype Box a =
  Box a
  deriving (Show)

instance Functor Box where
  fmap f (Box a) = Box (f a)

-- box1 is a functor that holds the result "hello"
box1 :: Box String
box1 = Box "hello"

box2 :: Box Integer
box2 = fmap (toInteger . length) box1

-- f1 is also a functor that "holds" a range of possible results
f1 :: Integer -> Integer
f1 = (+ 100)

-- the functor f2 holds the range of possible result of f1 multiplied by 2
f2 :: Integer -> Integer
f2 = fmap (* 2) f1 -- fmap acts exactly like (.) in this case
{- The functor laws
    For something to be technically a functor it has to follow to laws.
    1. For some functor F, fmap id F = F
        This means that if you pass the identity function (id = (\x -> x)) to
        fmap, the returned value must be identical to the original value.
    2. For some functor F, fmap (f . g) F = (fmap f) . (fmap g) F
-}
