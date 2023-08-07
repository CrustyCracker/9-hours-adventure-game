module Locations.Frogshop where

import Data.Map (Map)
import qualified Data.Map as Map

import Datatypes

-- ============== Info ==============

infoFrogshop :: IO ()
infoFrogshop = do
  putStrLn "You walk into the frogshop and as expected you can see things typical "
  putStrLn "for grocery store and also a lot of student's currency which can be a well-deserved "
  putStrLn "reward for finishing your project."

-- ============= Objects =============

king_of_the_mountains_can :: ItemMap
king_of_the_mountains_can =
  ItemMap { itemName = "King of the Mountains Can"
       , itemDescription = ["A can of student's currency with a majestic man against the background"
                           , "of the mountains."
                           , "A classic among students."]
       }

pearl_can :: ItemMap
pearl_can =
  ItemMap { itemName = "Pearl Can"
       , itemDescription = ["A can of student's currency with a simple but stylish design."
                           , "Not as popular as King of the Mountains but also very recognizable."]
       }

five_zloty :: ItemMap
five_zloty =
  ItemMap { itemName = "Five Zloty Coin"
       , itemDescription = ["A regular five zloty coin."]
       }

-- ============= People =============

cashier :: PersonMap
cashier =
  PersonMap { personName = "Cashier"
         , personTalk = ["Hi, how can I help you?"
                        , "[Bart]: Hello, how much does the student's currency cost?"
                        , "[cashier]: It will be 2.5 zloty for one piece!"
                        , "[Bart]: Thank you very much!"]
         , personTalkAgain = ["Hi, how can I help you?"
                             , "[Bart]: Hello, how much does the student's currency cost?"
                             , "[cashier]: It will be 2.5 zloty for one piece!"
                             , "[Bart]: Thank you very much!"]
         , personTalkWithItem = Map.singleton "five_zloty" ["[Bart]: Oh, and also can I exchange 5 zloty coin here?"
                                                          , "[cashier]: Of course you can!"
                                                          , "[Bart]: Ok, so I'll be right back. Thanks again!"]
         , personGive = Map.singleton "five_zloty" ["*** You give the cashier 5 zloty coin. ***"
                                                   , "[cashier]: Thank you!"
                                                   , "Here you go, two pieces of student's currency."
                                                   , "*** Cashier gives you two pieces of student's currency ***"
                                                   , "*** You feel kinda bad for paying with Rad's money ***"]
         , personItems = []
         }

-- ============= Location ===========

frogshop :: LocationMap
frogshop =
  LocationMap { locationDescription = ["You walk into the frogshop and as expected you can see things typical"
                                   , "for grocery store and also a lot of student's currency which can be a well-deserved"
                                   , "reward for finishing your project."]
           , locationItems = Map.fromList [ ("king_of_the_mountains_can", king_of_the_mountains_can)
                                          , ("pearl_can", pearl_can)
                                          ]
           , locationPeople = Map.singleton "cashier" cashier
           , locationPaths = ["reception"]
           }
