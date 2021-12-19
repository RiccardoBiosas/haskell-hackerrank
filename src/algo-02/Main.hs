appendNTimes :: Int -> Int -> [Int]
appendNTimes n x | n <= 1 = [x]
                    | otherwise = do
                        appendNTimes (n - 1) x ++ [x]

f :: Int -> [Int] -> [Int]
f n = concatMap (appendNTimes n)

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words