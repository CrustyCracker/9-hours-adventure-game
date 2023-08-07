module Locations.ResidentsCouncilRoom where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes

-- ============= People =============

mat :: PersonMap
mat = PersonMap
  { personName = "Mat"
  , personTalk =
      [ "My man, what a day right! This brute out there forced me to clean thier room."
         ,"I'm glad you came to save me, I don't think I would've clean that room in a week!"
         ,"What? What project? The deadline is TODAY! DAMN, I better get to it then!"
         
      ]
  }

-- ============= Location =============

residents_council_room :: LocationMap
residents_council_room = LocationMap
  { locationDescription =
      [ "The room is like a dumpster, You notice mat swimming in the pool of garbage bags."
      ]
  , locationItems = Map.empty
  , locationPeople =
      Map.fromList
        [ ("mat", mat)
        ]
  , locationPaths =
      ["hall_a2_floor"]
  }
