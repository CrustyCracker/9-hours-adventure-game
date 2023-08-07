module Actions.Talk where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Actions.HelperFunctions

makedialogue :: String -> [String] -> [String]
makedialogue name (x:xs) = ["\n[" ++ name ++ "] " ++ x] ++ xs ++ ["\n"]

talk :: Person -> GameState -> ([String], GameState)
talk person state = do
  let location = playerLocation state
      locMap = locations state Map.! location
      people = locationPeople locMap
  if person `elem` Map.keys people
    then do
      let locPerson = people Map.! person
          items = personItems locPerson
      case items of
        [] -> (makedialogue (personName locPerson) (personTalk locPerson), state { talkedPeople = personName locPerson : talkedPeople state })
        (lastItem : _) ->
          if lastItem `elem` Map.keys (personTalkWithItem locPerson)
            then (makedialogue (personName locPerson) (personTalkWithItem locPerson Map.! lastItem), state)
            else if personName locPerson `elem` talkedPeople state
                   then (makedialogue (personName locPerson) (personTalkAgain locPerson), state)
                   else (makedialogue (personName locPerson) (personTalk locPerson), state { talkedPeople = personName locPerson : talkedPeople state })
    else (["No such person there."], state)