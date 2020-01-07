module Main exposing (main)

import Browser
import Html exposing (Html, div, h1, text)
import Html.Events exposing (onInput)


type alias Model =
    { sheetName : String
    , sections : List String
    }


type Msg
    = SetSheetName String



-- MODEL


init : () -> ( Model, Cmd Msg )
init _ =
    ( { sheetName = "Nes Sheet"
      , sections = [ "one" ]
      }
    , Cmd.none
    )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        SetSheetName sheetName ->
            ( { model | sheetName = sheetName }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text model.sheetName ]
        ]



-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
