module Locations.Toilet where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes

-- ============= Objects ============

toilet_paper = ItemMap{itemName = "Toilet Paper"
                   , itemDescription = ["It\'s a toilet paper"]
                   , itemEat = ["You\'ve eaten the toilet paper. It was not a really good idea."]
                   , itemEatDeath = ["You\'ve been eating the toilet paper and suddenly you choked and suffocated to death. Good job!"]
                   , itemEatDeathChance = 10 
                   }

-- ============= People =============

voice_from_toilet = PersonMap {personName = "Voice from toilet"
                          , personTalk = ["Bart, thank god you are here, I need toilet paper NOW!", 
                                          "Please bring me a roll and I will reward you kindly."]
                          , personTalkAgain = ["Toilet paper, PLEASE!"]
                          , personTalkWithItem = Map.fromList [(
                              "toilet_paper", ["Thank you, Bart, you are a true friend!"]
                          )]
                          , personGive = Map.fromList [
                              ("toilet_paper", ["Thank you"])
                            ]
                          , personItems = []}

-- ============= Location ===========

toilet = LocationMap {locationDescription = ["It\'s the toilet you recognize as your own. It\'s not the first",
                                             "nor the last time you are here. From behind the doors you hear a",
                                             "muffled, sore voice."]
                            , locationItems = Map.fromList [
                              ("toilet_paper", toilet_paper)
                              ]
                            , locationPeople = Map.fromList [
                                ("voice_from_toilet", voice_from_toilet)
                              ]
                            , locationPaths = ["your_room"]}