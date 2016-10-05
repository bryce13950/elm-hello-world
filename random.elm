import Html exposing (..)
import Html.App as Html
import Html.Events exposing (onClick)

main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

--MODEL

type alias Model =
  { dieFace : Int
  }



-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ h1 [] [ text (toString model.dieFace) ]
    , button [ onClick Roll ] [ text "Roll" ]
    ]


type Msg = Roll

-- UPDATE

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Roll ->
      (model, Cmd.none)

-- SUBSCRIPTIONS

subscriptions : Model -> (Sub Msg)
subscriptions model =
  Sub.none


--INIT

init : (Model, Cmd Msg)
init =
  (Model 1, Cmd.none)
