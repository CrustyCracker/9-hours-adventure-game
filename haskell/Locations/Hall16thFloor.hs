module Locations.Hall16thFloor where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes

-- ============= Objects =============

rm_poster :: ItemMap
rm_poster = ItemMap
  { itemName = "RM Poster"
  , itemDescription =
      [ "It's a poster with all members of the RM team."
      , "It has info about their names, roles and rooms they live in."
      , ""
      , "Info:"
      , "- RM room is located on a2 floor"
      , "- Ad - president of the RM - room 1005"
      , "- Luk - leader of disciplinary committee - room 1607"
      ]
  , itemEat = ["You have eaten the poster.", "You don't have any health issues but you are worried that this action may lead to some consequences in the future."]
  , itemEatDeath = []
  , itemEatDeathChance = 0
  }

-- ============= Location ===========

hall_16th_floor :: LocationMap
hall_16th_floor = LocationMap
  { locationDescription =
      [ "You look around the hall, doesn't look half bad! Looks like somone keeps this floor in order."
      , ""
      , "near the elevators."
      ]
  , locationItems =
      Map.fromList
        [ ("rm_poster", rm_poster)
        ]
  , locationPeople = Map.empty
  , locationPaths =
      ["elevator"]
  }
