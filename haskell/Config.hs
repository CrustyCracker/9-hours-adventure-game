module Config where

import Datatypes

import Data.Map (Map)
import qualified Data.Map as Map

import Locations.YourRoom
import Locations.Toilet
import Locations.Hall10thFloor
import Locations.Elevator
import Locations.Hall16thFloor
import Locations.Frogshop
import Locations.HallA2Floor
import Locations.HallBasement
import Locations.HallGroundFloor
import Locations.LaundryRoom
import Locations.Reception
import Locations.ResidentsCouncilRoom

initialTime :: Time
initialTime = 540

initialLocation :: Location
initialLocation = "your_room"

initialState :: GameState
initialState = GameState
    { playerLocation = initialLocation
    , playerInventory = Map.fromList[]
    , locations = Map.fromList [
        ("your_room", your_room),
        ("toilet", toilet),
        --MKTODO JESZCZE TUTAJ
        ("hall_10th_floor", hall_10th_floor),
        ("elevator", elevator),
        ("hall_16th_floor", hall_16th_floor),
        ("frogshop", frogshop),
        ("hall_a2_floor", hall_a2_floor),
        ("hall_basement", hall_basement),
        ("hall_ground_floor", hall_ground_floor),
        ("laundry_room", laundry_room),
        ("reception", reception),
        ("residents_council_room", residents_council_room)
       ]
    , talkedPeople = []
    , currentTime = initialTime
    , isDead = False
    }
