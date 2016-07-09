module Site.View exposing (..)

import Html exposing (Html, div, a, h1, text)
import Html.Attributes exposing (..)
import Site.Messages exposing (..)
import Site.Model exposing (..)

view : Model -> Html Msg
view model = 
    div
    [ id "elm", class "container"]
    [ div
      [ class "row" ]
      [ div
        [ class "column column-100" ]
        [ h1
          [ id "heading" ]
          [ text "Nick Seagull"]
        ]
      ]
    , div
      [ class "row", id "links"]
      [ div
        [ class "column column-20" ]
        [ a [href "#"] [ text "about me"]]
      , div
        [ class "column column-20" ]
        [ a [href "https://medium.com/@codeseagull"] [ text "blog"] ]
      , div
        [ class "column column-20" ]
        [ a [href "#"] [ text "projects"] ]
      , div
        [ class "column column-20" ]
        [ a [href "https://github.com/nickseagull"] [ text "github"] ]
      , div
        [ class "column column-20" ]
        [ a [href "https://twitter.com/CodeSeagull"] [ text "twitter"] ]
      ]
    ]
