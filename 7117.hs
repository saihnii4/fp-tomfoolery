module Main where

solve n
  | n > 89 = "A"
  | n > 79 = "B"
  | n > 69 = "C"
  | n > 59 = "D"
  | otherwise = "F"

main = getLine >>= putStrLn . solve . read
