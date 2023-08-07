module Actions.Look where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Actions.HelperFunctions

look :: GameState -> [String]
look state = 
    let location = playerLocation state
        locMap = locations state Map.! location
        desc = locationDescription locMap
        people = if null (locationPeople locMap)
            then "There is noone here."
            else "You notice " ++ (commaSeparated (Map.keys (locationPeople locMap)))
        items = if null (locationItems locMap)
            then "There is nothing here."
            else "You see " ++ (commaSeparated (Map.keys (locationItems locMap)))
        paths = if null (locationPaths locMap)
            then "There are no exits."
            else "You can go to " ++ (commaSeparated (locationPaths locMap))
    in [nlSeparated desc ++ "\n\n" ++ people ++ "\n\n" ++ items ++ "\n\n" ++ paths ++ "\n\n"]