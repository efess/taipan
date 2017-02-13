module Screen.Title exposing (..)
import Html exposing (Html, div, h1, section, text, button)
import Html.App as App
import Html.Attributes exposing (class, id)
import Html.Events exposing (onClick)
import Messages exposing (..)
import Models exposing (AppModel)
import GameState exposing (..)

--type Msg = TitleNewGame | TitleResumeGame

-- update: Msg -> AppModel -> ( GameState, Cmd Msg )
-- update msg model =
--   case msg of
--     TitleNewGame -> (GameState.NewGame, Cmd.none)
--     TitleResumeGame -> (GameState.NewGame, Cmd.none) --TODO

view model = 
  div 
    [class "wrapper", id "maincontainer"]
    [
      h1 [] [text "Taipan"],
      section [class "mainsection"] [
        button [ StateChange GameState.NewGame |> onClick] [text "New Game"]
        --App.map FirmnameMsg (Firmname.view model.firmname)
      ]
    ]
  