module Actions.Eat where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Actions.HelperFunctions

import System.Random


eat :: Item -> GameState -> ([String], GameState)
eat item state = do
    let location = playerLocation state 
        locMap = locations state Map.! location
        locItems = locationItems locMap
        invItems = playerInventory state
        items = Map.union invItems locItems
        generatedValue = fst $ randomR (0, 100) $ mkStdGen 2021
    if item `elem` Map.keys items
        then do let eatenItem = items Map.! item
                    deathChance = itemEatDeathChance eatenItem
                if deathChance > generatedValue
                    then do (itemEatDeath eatenItem, state {
                            isDead = True
                        })
                    else (itemEat eatenItem,
                            state {
                                playerInventory = Map.delete item invItems
                                , locations = Map.adjust (\lm -> lm { locationItems = Map.delete item locItems }) location (locations state)
                                , currentTime = currentTime state - 1
                            })
        else (["No such item in here or inventory .\n"], state)
