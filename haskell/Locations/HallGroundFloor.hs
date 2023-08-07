module Locations.HallGroundFloor where

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
  , itemEat =
      [ "You have eaten the poster."
      , "You don't have any health issues but you are worried that"
      , "this action may lead to some consequences in the future."
      ]
  , itemEatDeath = []
  , itemEatDeathChance = 0
  }

obs_poster :: ItemMap
obs_poster = ItemMap
  { itemName = "Obs Poster"
  , itemDescription =
      [ "It's a really big poster with some dude on it."
      , "It says that his name is Obs and he is participating in the election"
      , "to faculty student council."
      ]
  , itemEat =
      [ "You have eaten the poster."
      , "You don't have any health issues but you are worried that"
      , "this action may lead to some consequences in the future."
      ]
  , itemEatDeath = []
  , itemEatDeathChance = 0
  }

-- ============= People =============

-- ============= Location ===========

hall_ground_floor :: LocationMap
hall_ground_floor = LocationMap
  { locationDescription =
      [ "You look around the hall, you see a smashed beer cans everywhere."
      , "Seems like someone had a party here. You notice someone sleeping"
      , "near the elevators."
      ]
  , locationItems =
      Map.fromList
        [ ("rm_poster", rm_poster)
        , ("obs_poster", obs_poster)
        ]
  , locationPeople = Map.empty
  , locationPaths =
      ["reception", "hall_basement", "elevator"]
  }