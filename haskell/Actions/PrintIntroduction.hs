module Actions.PrintIntroduction where

import Actions.HelperFunctions

introductionText = [
  "The world suddenly stops spinning. You swiftly grab your aching head and",
  "put yourself up from the mess you\'re already used to calling your bed.",
  "You look up on the wall, where you notice a single sticky note. You take",
  "a closer look. It strikes you. Your PARP project is due today. You say",
  "your prayers as you glance at your watch. It is exactly 15:00 pm.",
  "Around you are two empty bed where your roommates sleep.",
  "Shame that they are not here. Guess you will need to find them!",
  "-------------------------| You have 9 hours. | -------------------------",
  ""
  ]

printIntroduction = printLines introductionText