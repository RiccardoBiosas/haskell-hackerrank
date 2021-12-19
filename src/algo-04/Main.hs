f :: [Int] -> [Int]
f xs = [x | (x, i) <- zip xs [0..], i `mod` 2 == 1]

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
    inputdata <- getContents
    mapM_ (putStrLn. show). f. map read. lines $ inputdata  