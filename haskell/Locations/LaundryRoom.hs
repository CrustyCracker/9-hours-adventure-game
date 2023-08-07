module Locations.LaundryRoom where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes

-- ============= Objects =============

toms_tide_pods :: ItemMap
toms_tide_pods = ItemMap
  { itemName = "Tom's Tide Pods"
  , itemDescription =
      [ "You see a small box of Tide Pods which Tom is using for laundry."
      , "You know that you are not supposed to eat them but they look like something delicious"
      ]
  , itemEat =
      [ "You eat the Tide Pods and as it turned out they don't taste as good as they look."
      , "You feel sick and you start to vomit."
      ]
  , itemEatDeath =
      [ "You eat the Tide Pods and as it turned out they don't taste as good as they look."
      , "You feel sick and you start to vomit."
      , "It turns out that you are allergic to Tide Pods."
      , "You die."
      ]
  , itemEatDeathChance = 90
  }

-- ============= People =============

tom :: PersonMap
tom = PersonMap
  { personName = "Tom"
  
  , personTalk =
       ["Yeah the washing machine has eaten first of his 5 zloty coins "
         ,"and the second one is too new for this outdated paying mechanism."
         ,"He is probably in the reception to exchange his defective coin."
         ]
    , personTalkWithItem = Map.singleton
        "toms_tide_pods" ["Tom: \"Oh, you found my Tide Pods! Thanks!"]
        
      
  }

-- ============= Location =============

laundry_room :: LocationMap
laundry_room = LocationMap
  { locationDescription =
      [ "You look around and you see four laundry machines and one laundry dryer."
      , "There is also a person that's standing in the corner of the room."
      ]
  , locationItems =
      Map.fromList
        [ ("toms_tide_pods", toms_tide_pods)
        ]
  , locationPeople =
      Map.fromList
        [ ("tom", tom)
        ]
  , locationPaths =
      ["hall_basement"]
  }