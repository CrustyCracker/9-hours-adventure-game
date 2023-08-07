module Actions.Pickup where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Actions.HelperFunctions

pickup :: Item -> GameState -> ([String], GameState)
pickup item state = do
    let location = playerLocation state 
        locMap = locations state Map.! location
        locItems = locationItems locMap
        invItems = playerInventory state
    if item `elem` Map.keys locItems
        then do let pickedItem = locItems Map.! item
                ([itemName pickedItem ++ " picked up.\n"],
                    state {
                        playerInventory = Map.insert item pickedItem invItems
                        , locations = Map.adjust (\lm -> lm { locationItems = Map.delete item locItems }) location (locations state)
                        , currentTime = currentTime state - 1
                    })
        else (["No such item in here.\n"], state)
