module Actions.Drop where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Actions.HelperFunctions

dropItem :: Item -> GameState -> ([String], GameState)
dropItem item state = do
    let location = playerLocation state 
        locMap = locations state Map.! location
        locItems = locationItems locMap
        invItems = playerInventory state
    if item `elem` Map.keys invItems
        then do let droppedItem = invItems Map.! item
                ([itemName droppedItem ++ " dropped.\n"],
                    state {
                        playerInventory = Map.delete item invItems
                        , locations = Map.adjust (\lm -> lm { locationItems = Map.insert item droppedItem locItems }) location (locations state)
                        , currentTime = currentTime state - 1
                    })
        else (["No such item in inventory.\n"], state)
