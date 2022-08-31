solve arr = a**b
  where (a:b:_) = arr

main = getLine >>= print . floor . solve . map read . words
