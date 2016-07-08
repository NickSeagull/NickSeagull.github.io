module Site.Model exposing (..)

import Site.Messages exposing (..)

type alias Model =
    Int


init : ( Model, Cmd Msg )
init =
    ( 0, Cmd.none )

