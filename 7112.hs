module Main where

{- Not exhaustive but idc -}
solve :: Int -> [Char]
solve n
  | n < 5 = "YES"
  | n > 5 = "NO"

main = getLine >>= putStrLn . solve . read 
