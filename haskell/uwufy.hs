replaceMultiple :: String -> [Char] -> Char -> String
replaceMultiple [] _ _ = []
replaceMultiple [x] c r
  | x `elem` c = [r]
  | otherwise = [x]
replaceMultiple (x:xs) c r
  | x `elem` c = r : replaceMultiple xs c r
  | otherwise = x : replaceMultiple xs c r

uwufy :: String -> String
uwufy xs = replaceMultiple xs "rl" 'w'
