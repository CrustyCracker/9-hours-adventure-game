module Locations.YourRoom where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes

-- ============== Info ==============

your_room :: LocationMap
your_room = LocationMap
  { locationDescription =
      [ "The stench of the room makes your eyeballs itch. You somehow manage to"
      , "look around. There's no one here. You are surrounded by empty bottles,"
      , "bits of confetti and dirty clothes. The fridge is half open, there isn't much"
      , "in there, just a bottle of beer with caption DO NOT STEAL written on it with a white marker"
      ]
  , locationItems =
      Map.fromList
        [ ("rads_laptop", rads_laptop)
        , ("empty_bottle", empty_bottle)
        , ("flyer", flyer)
        , ("signed_beer", signed_beer)
        , ("white_marker", white_marker)
        ]
  , locationPeople = Map.empty
  , locationPaths =
      ["toilet", "hall_10th_floor"]
  }

-- ============= Objects =============

rads_laptop :: ItemMap
rads_laptop = ItemMap
  { itemName = "Rad's Laptop"
  , itemDescription =
      [ "Rad's laptop has always been covered in corny programmer stickers."
      , "You open it up and see it's locked. Coffee stains cover the keycaps."
      ]
  , itemEat =
      [ "You chop off the corner of Rad's laptop and break some teeth in the"
      , "process. You choke on swallowed parts of its case and electronics"
      , "and die from suffocation."
      ]
  , itemEatDeath =
      [ "You've been eating the laptop and suddenly you choked and suffocated to death. Good job!"
      ]
  , itemEatDeathChance = 100
  }

empty_bottle :: ItemMap
empty_bottle = ItemMap
  { itemName = "Empty Bottle"
  , itemDescription = ["It's just an empty bottle."]
  , itemEat =
      [ "You take a bite of the bottle and the shards of glass"
      , "cut your throat from the inside. You die."
      ]
  , itemEatDeath = []
  , itemEatDeathChance = 90
  }

flyer :: ItemMap
flyer = ItemMap
  { itemName = "Flyer"
  , itemDescription = ["It's an invitation to a party with yesterday's date."]
  , itemEat =
      [ "You slowly swallow the flyer bit by bit. It does not taste good."
      , "In fact it does not taste like anything. Your stomach hurts a little."
      ]
  , itemEatDeath = ["You tried to swallow the whole flyer at once. Unfortunately, it was too big for your throat and you suffocated."]
  , itemEatDeathChance = 80
  }

signed_beer :: ItemMap
signed_beer = ItemMap
  { itemName = "Signed Beer"
  , itemDescription =
      [ "Green bottle with delicious liquid filled in it to the neck! Someone signed it"
      , "with caption DO NOT STEAL. You don't remember much, who knows, it might have been you who signed it!"
      ]
  , itemEat = []
  , itemEatDeath = []
  , itemEatDeathChance = 0
  }

white_marker :: ItemMap
white_marker = ItemMap
  { itemName = "White Marker"
  , itemDescription = ["A white marker, a rare thing, good for signing green bottles!"]
  , itemEat = ["You swallow the marker whole, doesn't seem that bad!"]
  , itemEatDeath = []
  , itemEatDeathChance = 0
  }

-- ============= People =============
