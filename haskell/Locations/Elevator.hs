module Locations.Elevator where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes

-- ============== Info ==============

elevator :: LocationMap
elevator = LocationMap
  { locationDescription =
      [ "Good old elevator! Even the date on the lift review sticker has a historic"
      , "date on it! Most of the buttons are covered in some sticky fluid."
      , "The only buttons that seem touchable are displayed below. Call it lazy"
      , "development, we call it smart story unraveling."
      ]
  , locationItems =
      Map.fromList
        [ ("cat_sticker", cat_sticker)
        , ("toilet_paper", toilet_paper)
        ]
  , locationPeople = Map.empty
  , locationPaths =
      ["hall_10th_floor", "hall_a2_floor", "hall_ground_floor", "hall_16th_floor"]
  }

-- ============= Objects =============

cat_sticker :: ItemMap
cat_sticker = ItemMap
  { itemName = "Cat Sticker"
  , itemDescription =
      [ "It's a sticker of a cat :33. It's cute ^w^, yet it is covered in the same sticky"
      , "fluid as the buttons are on the elevator."
      ]
  , itemEat =
      [ "You eat the cat sticker. It's not very tasty, but it's not bad either."
      , "You feel a little fuzzy =^._.^=. Now the buttons in the elevator seem even more repelling."
      ]
  , itemEatDeath = []
  , itemEatDeathChance = 0
  }

toilet_paper :: ItemMap
toilet_paper = ItemMap
  { itemName = "Toilet Paper"
  , itemDescription = ["A nice roll of toilet paper, more than half left!"]
  , itemEat =
      [ "Why did you do this? Now you cannot finish the quest, good job!"
      , "I would recommend restarting."
      ]
  , itemEatDeath = []
  , itemEatDeathChance = 0
  }

-- ============= People =============
