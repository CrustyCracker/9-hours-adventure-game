module Actions.HelperFunctions where

-- ===| HELPER FUNCTIONS |===

-- print strings from list in separate lines
printLines :: [String] -> IO ()
printLines xs = putStr (unlines xs)

-- return strings from list as comma separated
commaSeparated :: [String] -> String
commaSeparated [] = ""
commaSeparated [x] = x
commaSeparated [x, y] = x ++ " and " ++ y
commaSeparated (x:xs) = x ++ ", " ++ commaSeparated xs

-- return strings from list as new line separated
nlSeparated :: [String] -> String
nlSeparated [] = ""
nlSeparated [x] = x
nlSeparated (x:xs) = x ++ "\n" ++ nlSeparated xs