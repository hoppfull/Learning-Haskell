module Main where

import Data.Ratio ((%))

main :: IO ()
main = do
  print int0 -- 5
  print int1 -- 5
  print float0 -- 3.14
  print float1 -- 3.14
  print int2 -- 5
  print float2 -- 3.14
  print float3 -- 5.0
  print float4 -- 5.0
  print int3 -- 3
  print int4 -- 3
  print int5 -- 4
  print rat0 -- 5 % 3
  print rat1 -- 11 % 2
  print rat2 -- 8 % 3
  print float5 -- 1.6666666

int0 = 5 :: Int -- bounded integer (efficient)

{- I think Int behaves differently on different CPU architectures. -}
int1 = 5 :: Integer -- unbounded integer (inefficient)

float0 = 3.14 :: Float -- single precision decimal

float1 = 3.14 :: Double -- double precision decimal

int2 =
  5 :: Integral a =>
         a -- Integral can be Int or Integer

float2 =
  3.14 :: Floating a =>
            a -- Floating can be Float or Double

float3 = fromInteger int1 :: Float -- casting Integer to Float

float4 = fromIntegral int0 :: Float -- casting Int to Float

{- fromIntegral seems more generic than fromInteger -}
int3 = round float0 :: Int -- Float to Int

int4 = floor float0 :: Int -- Float to Int

int5 = ceiling float0 :: Int -- Float to int

rat0 = 5 % 3 -- a rational number of arbitrary precision

rat1 = toRational 5.5

rat2 = rat0 + 1

float5 = fromRational rat0 :: Float
