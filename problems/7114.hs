module Main where

solve :: Int -> [Char]
solve n
  | even n = "YES"
  | odd n = "NO"

main = interact $ unlines . map (solve . read) . lines
