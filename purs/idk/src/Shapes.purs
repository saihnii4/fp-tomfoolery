module Shapes
  ( Shape(..)
  , findArea
  )
  where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Number (sqrt)

data Shape = Triangle Number Number Number
             | Circle Number
             | Square Number
             | Rectangle Number Number

findArea :: Shape -> Maybe Number
findArea (Circle radius) = Just (3.141592654 * radius * radius)

{- input the sides in ascending order or i will come over to your house and disembowel you -}
findArea (Triangle a b c)
  | a + b > c = Just (sqrt(0.5*(a+b+c)*(0.5*(a+b+c)-a)*(0.5*(a+b+c)-b)*(0.5*(a+b+c)-c))) {- messy heron's formula -}
  | otherwise = Nothing
findArea (Square side) = Just (side*side)
findArea (Rectangle x y) = Just (x * y)
