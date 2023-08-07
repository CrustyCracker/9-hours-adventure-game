module Actions.Restart where
import Actions.PrintIntroduction

import Datatypes



import Config


initialTime = 540
initialLocation = "your_room"


restart :: GameState -> GameState
restart state = do
  initialState
