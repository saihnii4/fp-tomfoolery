module Main where

solve n
  | n == 1 = "Monday"
  | n == 2 = "Tuesday"
  | n == 3 = "Wednesday"
  | n == 4 = "Thursday"
  | n == 5 = "Friday"
  | n == 6 = "Saturday"
  | n == 7 = "Sunday"

main = getLine >>= putStrLn . solve . read
