solve n
  | n >= 6 && n < 9 = "Summer"
  | n >= 2 && n <= 4 = "Spring"
  | n >= 11 || n < 2 = "Winter"
  | n >= 9 && n < 12 = "Autumn"

main = getLine >>= putStrLn . solve . read
