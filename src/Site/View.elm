module Site.View exposing (..)

import Html exposing (..)
import Markdown 
import Html.Attributes exposing (..)
import Site.Messages exposing (..)
import Site.Model exposing (..)

view : Model -> Html Msg
view model = case model.page of
                 "Main" ->
                     mainView model
                 "About" ->
                     aboutView model
                 _ ->
                     mainView model


menu : Html Msg
menu = div
      [ class "row", id "links"]
      [ div
        [ class "column column-15" ]
        [ a [href "#projects"] [ text "projects"] ]
      , div
        [ class "column column-15" ]
        [ a [ href "https://www.linkedin.com/in/nickseagull"] [ text "linkedin"]]
      , div
        [ class "column column-15" ]
        [ a [href "https://medium.com/@codeseagull"] [ text "blog"] ]
      , div
        [ class "column column-15" ]
        [ a [href "https://github.com/nickseagull"] [ text "github"] ]
      , div
        [ class "column column-15" ]
        [ a [href "https://twitter.com/CodeSeagull"] [ text "twitter"] ]
      ]

wrapper : List (Html Msg) -> Html Msg
wrapper content = div []
    [ div
      [ id "elm", class "container"]
      [ heading "Nick Seagull"
      , menu
      , div
            [ class "row" ]
            [ div
              [ class "column column-100" ]
                  content
            ]
      ]
    ]

lineBreak : Html Msg
lineBreak = br [] []

listItem : String -> Html Msg            
listItem s = li [] [ text s ]

heading : String -> Html Msg
heading s =
    h1
    [ id "heading" ]
    [ text s]

footer : Html Msg
footer =
    div
    [ id "footer" ]
    [ text "copyright © 2016 Nikita Tchayka"]

    
mainView : Model -> Html Msg
mainView model =
    wrapper <|
        [ section [ id "top" ] [ aboutView model]
        , section [ id "projects" ] [ projectsView ]
        ]

aboutView : Model -> Html Msg
aboutView model = Markdown.toHtml [ id "about-me" ] """
Nick is a human being really passionate about **machine learning**.  
He finds himself extremely comfortable programming in a functional way,
mostly in **Haskell** and **Python**.  
Currently, he is working at **The Agile Monkeys**, developing innovative
solutions.  
Since he started coding at the **age of 12**, he could never satiate his
hunger for knowledge, always trying new technologies.  
His real name is **Nikita Tchayka**.
"""

projectsView : Html Msg
projectsView =
    div
    [ class "container" ]
    [ div
      [ class "row" ]
      [ div [ class "centered-heading" ] [heading "Projects"] ]
    , div
      [ class "row"]
      [ div
        [ class "column centered-heading"]
        [ figure
          []
          [ img [ src "https://cloud.githubusercontent.com/assets/7448243/16714562/19f64ca6-46bf-11e6-95f9-bef7b89a0967.png"
                , class "full-img"
                ] []
          , figcaption [] [
                 a [href "https://github.com/NickSeagull/clj-invaderz"]
                [ text "CLJ Invaderz"]
                ]
          ]
        ]
      , div
        [ class "column centered-heading"]
        [ figure
          []
          [ img [ src "https://cloud.githubusercontent.com/assets/7448243/16714565/1a3abbc0-46bf-11e6-8efa-e344339cb0ec.png"
                , class "full-img"
                ] []
          , figcaption [] [
                 a [href "https://github.com/NickSeagull/sezzet"]
                [ text "Sezzet Deserializer"]
                ]
          ]
        ]
      , div
        [ class "column centered-heading"]
        [ figure
          []
          [ img [ src "https://cloud.githubusercontent.com/assets/7448243/16714567/1a3f96cc-46bf-11e6-9e48-5de1050b4753.png"
                , class "full-img"
                ] []
          , figcaption [] [
                 a [href "https://github.com/NickSeagull/speechy"]
                     [ text "Speechy"]
                 ]
          ]
        ]
      ]
    , div -------------------- ROW
      [ class "row"]
      [ div
        [ class "column centered-heading"]
        [ figure
          []
          [ img [ src "https://cloud.githubusercontent.com/assets/7448243/16714563/1a1c68a0-46bf-11e6-8390-67153f5f5fd0.png"
                , class "full-img"
                ] []
          , figcaption [] [
                 a [href "https://github.com/NickSeagull/eac-test"]
                [ text "EaC Test"]
                ]
          ]
        ]
      , div
        [ class "column centered-heading"]
        [ figure
          []
          [ img [ src "https://cloud.githubusercontent.com/assets/7448243/16714564/1a39fa00-46bf-11e6-93f0-907f725472f6.png"
                , class "full-img"
                ] []
          , figcaption [] [
                 a [href "https://github.com/NickSeagull/yet-another-synth"]
                [ text "Yet Another Synth"]
                ]
          ]
        ]
      , div
        [ class "column centered-heading"]
        [ figure
          []
          [ img [ src "https://cloud.githubusercontent.com/assets/7448243/16714566/1a3dda4e-46bf-11e6-9227-f0f27e7512da.png"
                , class "full-img"
                ] []
          , figcaption [] [
                 a [href "https://github.com/NickSeagull/ellipse-recognition"]
                [ text "GA Ellipse Recognition"]
                 ]
          ]
        ]
      ]
    ]
