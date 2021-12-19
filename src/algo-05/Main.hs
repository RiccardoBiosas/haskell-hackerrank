fn n = [x | x <- [0..n-1] ]

main = do
    n <- readLn :: IO Int
    print (fn(n))