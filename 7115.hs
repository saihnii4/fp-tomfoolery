module Main where

solve n
  | n > 3 = "Tentssen"
  | n <= 3 = "Unasan"

main = getLine >>= putStrLn . solve . read
