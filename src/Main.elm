module Main exposing (..)

import Html exposing (Html, div, button, text)
import Html.Attributes exposing (..)
import Html.App
import Task exposing (Task)
import Window


-- MODEL


type alias Model =
    Int


init : ( Model, Cmd Msg )
init =
    ( 0, Cmd.none )



-- MESSAGES


type Msg
    = Fetch
    | FetchSuccess Int
    | FetchError String



-- VIEW


view : Model -> Html Msg
view model = 
    div [id "elm"]
        [ button [] [ text "Hi"]]

fetchTask : Task x Int
fetchTask =
    Window.width


fetchCmd : Cmd Msg
fetchCmd =
    Task.perform FetchError FetchSuccess fetchTask



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Fetch ->
            ( model, fetchCmd )

        FetchSuccess name ->
            ( name, Cmd.none )

        FetchError _ ->
            ( -1, Cmd.none )



-- MAIN


main : Program Never
main =
    Html.App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = (always Sub.none)
        }
