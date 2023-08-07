module Actions.Go where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Actions.HelperFunctions

go :: Location -> GameState -> ([String], GameState)
go location state = do
    let currentLocation = playerLocation state
        locMap = locations state Map.! currentLocation
        possiblePaths = locationPaths locMap
    if location `elem` possiblePaths
        then (["Went to " ++ location ++ ".\n"],
                state{ 
                    playerLocation = location
                    , currentTime = currentTime state - 1
                })
        else (["Can\'t go there.\n"], state)