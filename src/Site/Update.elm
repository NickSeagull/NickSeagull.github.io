module Site.Update exposing (..)

import Site.Messages exposing (..)
import Site.Model exposing (..)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Main ->
            ( {page = "Main"}, Cmd.none)
        AboutMe ->
            ( {page = "About"}, Cmd.none)
