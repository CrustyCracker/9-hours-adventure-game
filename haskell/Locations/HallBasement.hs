module Locations.HallBasement where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes

-- ============= Objects =============

rat_poison :: ItemMap
rat_poison = ItemMap
  { itemName = "Rat Poison"
  , itemDescription = ["Little red pellets which are used for deratization."]
  , itemEat =
      [ "You've eaten all the rat poison you could see in the hallway."
      , "You feel sick you die a moment later."
      , "Did you really think that it could end in any other way?"
      ]
  , itemEatDeath = []
  , itemEatDeathChance = 100
  }

-- ============= People =============

-- ============= Location ===========

hall_basement :: LocationMap
hall_basement = LocationMap
  { locationDescription =
      [ "You look around and you see entrance to the laundry room."
      , "You can also see rat poison in the corners of the hallway"
      ]
  , locationItems =
      Map.fromList
        [ ("rat_poison", rat_poison)
        ]
  , locationPeople = Map.empty
  , locationPaths =
      ["hall_ground_floor", "laundry_room"]
  }