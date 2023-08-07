module Locations.Reception where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes

-- ============== Info ==============

infoReception :: String
infoReception = unlines
  [ "You look around big hallway and you see Rad standing near the reception."
  , "But you don't see anyone inside the reception room."
  , "You can also see a door outside, but because you don't have much time,"
  , "you can only go to the frogshop."
  ]

-- ============= Objects =============

invalid_five_zloty :: ItemMap
invalid_five_zloty = ItemMap
  { itemName = "Invalid Five Zloty Coin"
  , itemDescription = ["It's a 5 zloty coin but it's too new for the laundry paying mechanism."]
  , itemEatDeath = ["You can't eat a coin!"]
  , itemEatDeathChance = 0
  }

-- ============= People =============

rad :: PersonMap
rad = PersonMap
  { personName = "Rad"
  , personTalk =
      [ "Have you just bought student's currency with my money?!"
      , "How am I supposed to do laundry now?"
      , "[Bart] No worries, we'll figure it out."
      ]
  , personTalkAgain =
      [ "Hi Bart! Have you exchanged my coin yet?"
      ]
  , personTalkWithItem =
      Map.fromList
        [ ( "king_of_the_mountains_can"
          , ["Have you just bought student's currency with my money?!", "How am I supposed to do laundry now?"]
          )
        , ( "pearl_can"
          , ["Have you just bought student's currency with my money?!", "How am I supposed to do laundry now?"]
          )
        ]
  , personGive =
      Map.singleton "five_zloty" ["Thanks Bart!", "Now I can do my laundry"]
  , personItems = []
  }

-- ============= Location ===========

reception :: LocationMap
reception = LocationMap
  { locationDescription = [infoReception]
  , locationItems = Map.singleton "invalid_five_zloty" invalid_five_zloty
  , locationPeople = Map.singleton "rad" rad
  , locationPaths = ["hall_ground_floor", "frogshop"]
  }
