module Actions.Describe where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Actions.HelperFunctions

describe :: Item -> GameState -> ([String])
describe item state = do
    let location = playerLocation state 
        locMap = locations state Map.! location
        locItems = locationItems locMap
        invItems = playerInventory state
        items = Map.union invItems locItems
    if item `elem` Map.keys items
        then do let pickedItem = items Map.! item
                (itemDescription pickedItem)
        else (["No such item there.\n"])
