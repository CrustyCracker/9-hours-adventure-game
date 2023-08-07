module Actions.Inventory where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Actions.HelperFunctions

inventory :: GameState -> [String]
inventory state = do
  let items = if null (playerInventory state)
              then ["You don\'t have any items yet."]
              else Map.keys (playerInventory state)
  items ++ ["\n"]
