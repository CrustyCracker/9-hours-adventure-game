module Actions.PrintInstructions where

import Actions.HelperFunctions

instructionsText = [
    "Available commands are:",
    "",
    "instructions          -- to see these instructions.",
    "restart               -- to restart the game.",
    "look                  -- to look around you.",
    "inventory             -- to look through your inventory.",
    "progress              -- to show progress of your mission",
    "time_left             -- to show time left to complete",
    "describe Object       -- to get some info about an object",
    "eat Object            -- to eat an object",
    "pickup Object         -- to pick an object into inventory",
    "drop Object           -- to remove an object from inventory",
    "talk Person           -- to talk to Person",
    "give Object Person    -- to give Objects to People",
    "go Location           -- to switch locations (if path exists)",
    "quit                  -- to end the game and quit.",
    ""
    ]

printInstructions = printLines instructionsText