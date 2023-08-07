module Datatypes where

import Data.Map (Map)
import qualified Data.Map as Map

-- ===| DATATYPES |===

type Location = String
type Item = String
type Person = String
type Time = Int

data ItemMap = ItemMap {itemName :: String, 
                  itemDescription :: [String], 
                  itemEat :: [String],
                  itemEatDeath :: [String],
                  itemEatDeathChance :: Int}

data PersonMap = PersonMap {personName :: String,
                      personTalk :: [String],
                      personTalkAgain :: [String],
                      personTalkWithItem :: Map Item [String],
                      personGive :: Map Item [String],
                      personItems :: [Item]}

data GameState = GameState {playerLocation :: Location,
                            playerInventory :: Map Item ItemMap,
                            locations :: Map Location LocationMap,
                            talkedPeople :: [String],
                            currentTime :: Time,
                            isDead :: Bool}

data LocationMap = LocationMap
    { locationDescription :: [String]
    , locationItems :: Map Item ItemMap
    , locationPeople :: Map Person PersonMap 
    , locationPaths :: [Location]
    }