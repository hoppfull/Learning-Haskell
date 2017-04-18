module Main where

main :: IO ()
main = do
  putStrLn $ show point -- Point {x = 5, y = 42}
  putStrLn $ show $ f huey -- 17
  putStrLn $ show huey -- Huey is 13 years old.

data Point = Point -- declaration of a new record type
  { x :: Integer -- field with type signatures
  , y :: Integer
  } deriving (Show) -- Point can be used with default show implementation

data Person = Person
  { name :: [Char]
  , age :: Integer
  }

-- Person can be used with explicit show implementation:
-- What in OOP might be "person.name" is "name person" in Haskell:
instance Show Person where
  show person = (name person) ++ " is " ++ show (age person) ++ " years old."

-- Function using a Person:
f :: Person -> Integer
-- fields are accessed with destruction:
f (Person personName personAge) = (fromIntegral $ length personName) + personAge

-- data record instantiation:
point :: Point
point = Point {x = 5, y = 42}

huey :: Person
huey = Person {name = "Huey", age = 13}
