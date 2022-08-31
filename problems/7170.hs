main = do
    (a:b:_) <- fmap read getLine :: IO Int

    print a