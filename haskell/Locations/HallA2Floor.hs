module Locations.HallA2Floor where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes
import Locations.Frogshop
import Locations.YourRoom
import Locations.Hall10thFloor

-- ============= Objects =============

warrior_beer :: ItemMap
warrior_beer = ItemMap
  { itemName = "Warrior Beer"
  , itemDescription = ["Warrior beer, a valuable item amongst local residents."]
  , itemEat =
      [ "You somehow manage to eat an entire can of beer."
      , "Aluminium bits of the can cut your throat."
      , "Surely next time you'll know better than to eat aluminium."
      , "You are dead!"
      ]
  , itemEatDeath = ["Brawo! You ate aluminium and died!"]
  , itemEatDeathChance = 100
  }

-- ============= People =============

adam :: PersonMap
adam = PersonMap
  { personName = "Adam"
  , personTalkAgain = ["Bring me three pieces of student currency and I shall relise your friend!"]
  , personTalkWithItem = Map.fromList
        [ ("warrior_beer", ["Mmmm wojaczek! How did you know that that's my favorite?"])
        , ("signed_beer", ["Nice, one in a bottle, that's a rare find around these parts! I hope you didn't steal it!"])
        , ("empty_beer_can", ["You are joking right? Well, guess that's free aluminium, but don't think that I will count it as a full beer!"])
        , ("king_of_the_mountains_can", ["Good old KOTM, I remember when I was a kid, I used to drink it all the time!"])
        , ("pearl_can", ["Pearl, one of my favorites!"])
        ]
  , personTalk =
      [ "Hi there, How is it going? You wont't belive what I have to tell you! This guy, Mat borrowed 3 beers form"
      , "me a week ago. He wasn't been giveing me any signs of life since. But today I cought him playing with the croud out there!"
      , "He told me that he is broke and can't pay back the debt. Now he is locked up in the room behind me cleaning it up."
      , "I don't think he is going to finish before midnight! Haha! What? You want to see Mat? Perhaps if you pay his debt, I will let him go."
      ]
  , personGive =
      Map.fromList
        [ ("warrior_beer", ["Mmmm wojaczek! How did you know that that's my favorite?"])
        , ("signed_beer", ["Nice, one in a bottle, that's a rare find around these parts! I hope you didn't steal it!"])
        , ("empty_beer_can", ["You are joking right? Well, guess that's free aluminium, but don't think that I will count it as a full beer!"])
        , ("king_of_the_mountains_can", ["Good old KOTM, I remember when I was a kid, I used to drink it all the time!"])
        , ("pearl_can", ["Pearl, one of my favorites!"])
        ]
  , personItems = []
  }

sitting_person :: PersonMap
sitting_person = PersonMap
  { personName = "Sitting Person"
  , personTalkAgain = ["Please, burp, give me a breeeeaaaak boooys!"]
  , personTalkWithItem = Map.empty
  , personTalk =
      [ "Blaaaah, I think I burp I---I played to much. Need a brakeeeak. Feew..."
      ]
  , personGive = Map.empty
  , personItems = []
  }

-- ============= Location ===========

hall_a2_floor :: LocationMap
hall_a2_floor = LocationMap
  { locationDescription =
      [ "When you go out of the elevator you hear some shouting STOP!. You instantly look in the way"
      , "of the sound, it appears that a group of people are playing some running game in the hall."
      , "One of the participants has taken a break, he sits on the floor, near him is a full can of Wojownik."
      , "Also, there is a big person with long white hair standing in front of a door near the elevators."
      , "You reconize him, its Ad, the president of the residents' council."
      ]
  , locationItems =
      Map.fromList
        [ ("warrior_beer", warrior_beer)
        ]
  , locationPeople =
      Map.fromList
        [ ("adam", adam)
        , ("sitting_person", sitting_person)
        ]
  , locationPaths =
      ["elevator"]
  }
