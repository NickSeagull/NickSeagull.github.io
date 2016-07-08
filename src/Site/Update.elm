module Site.Update exposing (..)

import Site.Messages exposing (..)
import Site.Model exposing (..)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        _ ->
            ( model, Cmd.none )
