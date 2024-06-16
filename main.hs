-- Just a sample function.

countForMe :: Num a => [a] -> a
countForMe [] = 0
countForMe nums = foldl (+) 0 nums

-- Main entry point.

main :: IO ()
main = putStrLn "Hello World"
