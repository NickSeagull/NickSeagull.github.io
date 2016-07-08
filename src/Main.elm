module Main exposing (..)

import Html.App
import Site.View exposing (..)
import Site.Model exposing (..)
import Site.Update exposing (..)
import Task exposing (Task)
import Window

-- UPDATE


-- MAIN


main : Program Never
main =
    Html.App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = (always Sub.none)
        }
