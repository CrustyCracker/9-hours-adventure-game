module Main where

import Data.Map (Map)
import qualified Data.Map as Map
import System.IO

import Datatypes
import Config

import Actions.HelperFunctions
import Actions.PrintIntroduction
import Actions.PrintInstructions
import Actions.Look
import Actions.Pickup
import Actions.Drop
import Actions.Eat
import Actions.Give
import Actions.Inventory
import Actions.TimeLeft
import Actions.Go
import Actions.Talk
import Actions.Describe
import Actions.Restart



-- ===| CONSTANTS |===


currentGameState :: GameState
currentGameState = initialState

readCommand :: IO String
readCommand = do
    putStr ("> ")
    hFlush stdout
    xs <- getLine
    return xs

parseInput :: String -> (String, String, String)
parseInput input = case words input of
    [] -> ("", "", "")
    [x] -> (x, "", "")
    x:y:z -> (x, y, unwords z)

-- ===| MAIN GAME LOOP |===

gameLoop :: GameState -> IO ()
gameLoop currentGameState = do
    input <- readCommand
    let (cmd, arg, arg2) = parseInput input
    case cmd of
        "instructions" -> do printInstructions
                             gameLoop currentGameState
        "look" -> do printLines (look currentGameState)
                     gameLoop currentGameState
        "inventory" -> do printLines (inventory currentGameState)
                          gameLoop currentGameState
        "time_left" -> do printLines (time_left currentGameState)
                          gameLoop currentGameState
        "describe" -> do let (outcome) = (describe arg currentGameState) 
                         printLines outcome
                         gameLoop currentGameState
        "drop" -> do let (outcome, updatedState) = dropItem arg currentGameState
                     printLines outcome
                     gameLoop updatedState
        "eat" -> do let (outcome, updatedState) = eat arg currentGameState
                    printLines outcome
                    gameLoop updatedState
        "pickup" -> do let (outcome, updatedState) = pickup arg currentGameState
                       printLines outcome
                       gameLoop updatedState
        "give" -> do let (outcome, updatedState) = give arg arg2 currentGameState
                     printLines outcome
                     gameLoop updatedState
        "go" -> do let (outcome, updatedState) = go arg currentGameState
                   printLines outcome
                   gameLoop updatedState
        "talk" -> do let (outcome, updatedState) = talk arg currentGameState
                     printLines outcome
                     gameLoop updatedState
        "restart" -> do let (updatedState) = restart currentGameState
                        printIntroduction
                        gameLoop updatedState
        "quit" -> return ()
        _ -> do printLines ["Unknown command.", ""]
                gameLoop currentGameState

main = do
    printIntroduction
    printInstructions
    gameLoop currentGameState
