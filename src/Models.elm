module Models exposing(AppModel)

import Firm exposing (Firm)
import GameState exposing (GameState)

type alias AppModel = {
  gameState: GameState,
  firm: Firm
}