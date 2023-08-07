module Locations.Hall10thFloor where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes

-- ============= Objects =============

empty_beer_can :: ItemMap
empty_beer_can = ItemMap
  { itemName = "Empty Beer Can"
  , itemDescription = ["Just an empty beer can."]
  , itemEat =
      [ "You somehow manage to eat an entire can of beer."
      , "Aluminium bits of the can cut your throat."
      , "Surely next time you'll know better than to eat aluminium."
      , "You are dead!"
      ]
  , itemEatDeath = []
  , itemEatDeathChance = 100
  }

-- ============= People =============

sleeping_individual :: PersonMap
sleeping_individual = PersonMap
  { personName = "Sleeping Individual"
  , personTalkAgain = []
  , personTalk =
      [ "Z Z Z (snort, louder)"
      , "z z z... (snort)"
      ]
  , personItems = []
  }

  -- ============= Location ===========

hall_10th_floor :: LocationMap
hall_10th_floor = LocationMap
  { locationDescription =
      [ "You look around the hall, you see smashed beer cans everywhere."
      , "Seems like someone had a party here. You notice someone sleeping"
      , "near the elevators."
      ]
  , locationItems =
      Map.fromList
        [ ("empty_beer_can", empty_beer_can)
        ]
  , locationPeople =
      Map.fromList
        [ ("sleeping_individual", sleeping_individual)
        ]
  , locationPaths =
      ["your_room", "elevator"]
  }
