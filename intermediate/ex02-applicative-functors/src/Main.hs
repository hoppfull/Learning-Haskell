module Main where

-- (<$>) = fmap
import Control.Applicative (Applicative, (<$>))

main :: IO ()
main = do
  print $ box1 <*> box2 <*> box3 -- Box 9
  print $ pure (*) <*> Box 5 <*> Box (7 :: Integer) -- Box 35
  print $ (+) <$> Box 10 <*> Box (3 :: Integer) -- Box 13

newtype Box a =
  Box a
  deriving (Show)

instance Functor Box where
  fmap f (Box x) = Box (f x)

{- An applicative functor is a functor that when
    it holds a function, the (<*>)-function can be
    used to apply that function to values held by
    other instances of that functor.
-}
instance Applicative Box where
  pure = Box
  (<*>) (Box f) = fmap f

box1
  :: Num a
  => Box (a -> a -> a)
box1 = pure (+)

box2 :: Box Integer
box2 = Box 6

box3 :: Box Integer
box3 = Box 3
