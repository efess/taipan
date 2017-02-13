import Html exposing (Html, div, h1, section, text)
import Html.App as App
import Html.Attributes exposing (class, id)
import Messages exposing (..)
import Models exposing (AppModel)
import GameState exposing (..)
import Screen.Title
import Screen.NewGame

main = App.beginnerProgram {
    model = model, 
    view = view,
    update = update
  }

model : AppModel
model = { 
    firm = { name = ""},
    gameState = GameState.Title
  }

update : AppMsg -> AppModel -> AppModel
update msg model = 
  case msg of
    StateChange gs -> { model | gameState = gs }

screen: AppModel -> Html AppMsg
screen model =
  case model.gameState of
    Title -> Screen.Title.view model
    NewGame -> Screen.NewGame.view model

view : AppModel -> Html AppMsg
view model = 
  div 
    [class "wrapper", id "maincontainer"]
    [
      h1 [] [text "Taipan"],
      section [class "mainsection"] [ screen model ]
    ]
  

