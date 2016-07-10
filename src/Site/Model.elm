module Site.Model exposing (..)

import Site.Messages exposing (..)

type alias Model =
    { page : String
    }


init : ( Model, Cmd Msg )
init =
    ( {page = "Main"}, Cmd.none )

