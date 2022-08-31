solve n
  | n == 5 = "Onts"
  | n == 4 = "Sain"
  | n == 3 = "Dund"
  | n == 2 = "Muu"

main = getLine >>= putStrLn . solve . read
