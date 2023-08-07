module Actions.TimeLeft where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Actions.HelperFunctions

time_left :: GameState -> [String]
time_left state = do
    ["You have " ++ (show(div (currentTime state) 60)) ++ " hours and " ++ (show(mod (currentTime state) 60)) ++ " minutes left.\n"]
