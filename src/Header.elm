module Header exposing (headerView)

import Html exposing (Html, div, h1, text)


headerView : Html msg
headerView =
    div []
        [ h1 [] [ text "tabbit" ]
        ]
