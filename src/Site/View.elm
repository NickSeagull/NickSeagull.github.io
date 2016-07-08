module Site.View exposing (..)

import Html exposing (Html, div, button, text)
import Html.Attributes exposing (..)
import Site.Messages exposing (..)
import Site.Model exposing (..)

view : Model -> Html Msg
view model = 
    div [id "elm"]
        [ button [] [ text "Hi"]]
