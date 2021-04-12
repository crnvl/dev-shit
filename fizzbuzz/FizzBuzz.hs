import Data.List

main :: IO ()
main = fizzBuzz

fizzBuzz :: IO ()
fizzBuzz = putStrLn $ intercalate "\n" [fizzBuzzSingle n | n <- [1 .. 100]]

fizzBuzzSingle :: Int -> String
fizzBuzzSingle n
  | n `mod` 15 == 0 = "FizzBuzz"
  | n `mod` 5 == 0 = "Buzz"
  | n `mod` 3 == 0 = "Fizz"
  | otherwise = show n