module Actions.Give where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Actions.HelperFunctions

give :: Item -> Person -> GameState -> ([String], GameState)
give item person state = do
    let location = playerLocation state 
        locMap = locations state Map.! location
        people = locationPeople locMap
        invItems = playerInventory state
    if item `elem` Map.keys invItems
        then do let givenItem = invItems Map.! item
                if person `elem` Map.keys people
                    then do let givenPerson = people Map.! person
                            if item `elem` Map.keys (personGive givenPerson)
                                then do let personCurrentItems = (personItems givenPerson) ++ [item]
                                            updatedPerson = givenPerson {
                                                personItems = personCurrentItems
                                                }
                                        (personGive givenPerson Map.! item, state {
                                            playerInventory = Map.delete item invItems
                                            , locations = Map.adjust (\lm -> lm { locationPeople = Map.insert person updatedPerson people }) location (locations state)
                                            , currentTime = currentTime state - 1
                                            })
                                else (["I don\'t want that.\n"], state)
                    else (["No such person in here.\n"], state)
        else (["No such item in inventory.\n"], state)
