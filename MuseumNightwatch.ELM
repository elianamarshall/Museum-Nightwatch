import Html
import Html.Attributes
-- import Wordathon modules here
import Ant
import Bee
import Beetle 
import Butterfly
import Dragonfly
import Ladybug
import Panda
import Parrotfish
import Squirrel
import Sun

wordArray = Array.fromList 
  [
  -- put your (word,animation)s imported from Wordathon modules here
    Ant.pair
  , Bee.pair
  , Beetle.pair
  , Butterfly.pair
  , Dragonfly.pair
  , Ladybug.pair
  , Panda.pair
  , Parrotfish.pair
  , Squirrel.pair 
  , Sun.pair
  ]
  
background =
  [
    square 200
    |> filled (rgb 233 207 171)
  ]
  
gameplay model =
  [   
    curve (-95.92,63.700) [Pull (-95.92,0) (-95.92,-63.70),Pull (-0.149,-63.70) (95.625,-63.70),Pull (95.625,-4.046) (95.625,55.606),Pull (97.490,69.623) (56.355,64),Pull (28.477,38.220) (0.5995,12.440),Pull (11.984,10.455) (12.290,0.1498),Pull (11.435,-11.68) (-0.299,-12.44),Pull (-12.02,-11.01) (-12.59,0.4496),Pull (-11.24,11.584) (0.2997,12.440),Pull (28.477,38.220) (56.655,64),Pull (-19.63,63.850) (-95.92,63.700)]
    |> filled black
    |> scale 2.1
    |> move (model.lightX, model.lightY)
    ,
    rect 100 200
    |> filled black
    |> move (50, 127)
    |> move (model.lightX, model.lightY)
    ,
    circle 27
    |> outlined (solid 3) black
    |> move (model.lightX, model.lightY)
    ,
    square 200
    |> filled (rgba 0 0 0 0)
    |> notifyMouseMoveAt MoveLight
  ]

overheadLight c =
  [
   triangle 60
   |> filled c
   |> rotate (degrees 90)
   |> move (-55, -15)
   |> scaleY 2
  ] |> group
  
stops =
    [ stop (rgba 255 255 255 0.1) 0
    , stop (rgba 255 255 255 0.2) 1
    , stop (rgba 255 255 255 0.3) 2
    , stop (rgba 255 255 255 0.4) 3
    ]

stopsR =
    [ stop (rgba 255 0 0 0.075) 0
    , stop (rgba 255 0 0 0.15) 1
    , stop (rgba 255 0 0 0.225) 2
    , stop (rgba 255 0 0 0.3) 3
    ]
    
grad = gradient stops

gradR = gradient stopsR
  
titleLight =
  [
    curve (-95.92,63.700) [Pull (-95.92,0) (-95.92,-63.70),Pull (-0.149,-63.70) (95.625,-63.70),Pull (95.625,-4.046) (95.625,55.606),Pull (97.490,69.623) (56.355,64),Pull (28.477,38.220) (0.5995,12.440),Pull (11.984,10.455) (12.290,0.1498),Pull (11.435,-11.68) (-0.299,-12.44),Pull (-12.02,-11.01) (-12.59,0.4496),Pull (-11.24,11.584) (0.2997,12.440),Pull (28.477,38.220) (56.655,64),Pull (-19.63,63.850) (-95.92,63.700)]
    |> filled black
    |> move (-15, 25)
    ,
    rect 250 100
    |> filled black
    |> move (70, -50)
    ,
    rect 100 200
    |> filled black
    |> move (130, 50)
    ,
    rect 200 200
    |> filled black
    |> move (-150, 0)
    ,
    rect 100 50
    |> filled black
    |> move (0, 63)
    ,
    circle 13
    |> outlined (solid 2) black
    |> move (-15, 25)
  ] |> group
  
titleScreen model txt =
  [
    loadFont "https://fonts.googleapis.com/css2?family=Eczar:wght@400..800&family=Rokkitt:ital,wght@0,100..900;1,100..900&display=swap"
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (-15, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (-10, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (-5, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (0, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (5, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (10, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (15, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (20, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (25, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (30, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (35, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (40, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (45, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (50, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (55, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (60, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (65, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (70, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (75, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (80, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (85, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (90, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (95, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (100, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (105, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (110, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (115, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (120, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (125, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (130, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (135, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (140, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (145, 9)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (145, 3.5)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (145, -2)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (145, -7.5)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (145, -13)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (145, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (140, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (135, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (130, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (125, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (120, -19.5)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (115, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (110, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (105, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (100, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (95, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (90, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (85, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (80, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (75, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (70, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (65, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (60, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (55, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (50, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (45, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (40, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (35, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (30, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (25, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (20, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (15, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (10, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (5, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (0, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (-5, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (-10, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (-15, -19)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (-15, 3.5)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (-15, -2)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (-15, -7.5)
    ,
    circle 3
    |> outlined (solid 0.6) (rgb 171 141 63)
    |> move (-15, -13)
    ,
    rect 161 31
    |> filled (rgb 171 141 63)
    |> move (65, -5)
    ,
    rect 160 30
    |> filled  (rgb 191 161 83)
    |> move (65, -5)
    ,
    rect 154 24
    |> filled (rgb 171 141 63)
    |> move (65, -5)
    ,
    rect 0.5 20
    |> filled (rgb 171 141 63)
    |> rotate (degrees -45)
    |> move (138, 3)
    ,
    rect 0.5 20
    |> filled (rgb 171 141 63)
    |> rotate (degrees 45)
    |> move (-8, 3)
    ,
    rect 0.5 20
    |> filled (rgb 171 141 63)
    |> rotate (degrees -45)
    |> move (-8, -13)
    ,
    rect 0.5 20
    |> filled (rgb 171 141 63)
    |> rotate (degrees 45)
    |> move (138, -13)
    ,
    rect 153 23
    |> filled white
    |> move (65, -5)
    ,
    text txt
    |> customFont "Eczar"
    |> bold
    |> centered
    |> filled (rgb 78 52 35)
    |> scale 1.25
    |> move (65, -10)
  ] |> group

tutorial model = 
 case model.tutorialCounter of
  0 ->
   [
   loadFont "https://fonts.googleapis.com/css2?family=Eczar:wght@400..800&family=Rokkitt:ital,wght@0,100..900;1,100..900&display=swap"
   ,
   button ("Next") (65,-55) (Next) (rgb 78 52 35) (rgb 191 161 83) white model
   ,
   text "Move your cursor to move the flashlight"
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 35)
   , 
   text "over the paintings. Click on the"
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 25)
   ,
   text "painting that matches the word."
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 15)
   ,
   rect 2 10
   |> filled red
   |> rotate (degrees -75)
   |> move (-80, 52)
   ,
   triangle 4
   |> filled red
   |> rotate (degrees -100)
   |> move (-77, 53)
   ]
  1 -> [
   loadFont "https://fonts.googleapis.com/css2?family=Eczar:wght@400..800&family=Rokkitt:ital,wght@0,100..900;1,100..900&display=swap"
   ,
   button ("Next") (65,-55) (Next) (rgb 78 52 35) (rgb 191 161 83) white model
   ,
   text "Get as many points as you can before the"
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 35)
   ,
   text "timer runs out! The more points you get," 
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 25)
   ,
   text "the faster the timer goes down. For"
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 15)
   ,
   text "each point you get, the timer goes up"
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 5)
   ,
   text "3 seconds!"
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, -5)
   ,
   "Score: " ++ String.fromInt model.score |> text |> fixedwidth |> filled white |> move (10,50)
   ,
   text "25"
   |> fixedwidth
   |> filled white
   |> move (-70, -50)
   ,
   rect 2 10
   |> filled red
   |> rotate (degrees -75)
   |> move (-80, -50)
   ,
   triangle 4
   |> filled red
   |> rotate (degrees -100)
   |> move (-77, -49)
   ,
   rect 2 10
   |> filled red
   |> rotate (degrees 75)
   |> move (73, 52)
   ,
   triangle 4
   |> filled red
   |> rotate (degrees -80)
   |> move (70, 53)
   ]
  _ -> [
   loadFont "https://fonts.googleapis.com/css2?family=Eczar:wght@400..800&family=Rokkitt:ital,wght@0,100..900;1,100..900&display=swap"
   ,
   square 200
   |> filled black
   ,
   button ("Main Menu") (65,-55) (GoToTitle) (rgb 78 52 35) (rgb 191 161 83) white model
   ,
   text "If you run out of time, a painting"
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 35)
   ,
   text "      gets stolen! Once three paintings"
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 25)
   ,
   text "      are stolen, the game is over."
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 15)
   ,
   text "  The red Xs track how many"
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, 5)
   ,
   text "    paintings have been stolen."
   |> fixedwidth
   |> centered
   |> filled white
   |> scale 0.7
   |> move (0, -5)
   ,
   "Score: " ++ String.fromInt model.score |> text |> fixedwidth |> filled white |> move (10,50)
   ,
   text "25"
   |> fixedwidth
   |> filled white
   |> move (-70, -50)
   ,
   x1
   |> move (0, -30)
   ,
   thief model
   ]
  
  
rope =
  [
  curve (-65.94,-36.12) [Pull (-41.15,-60.52) (-16.48,-36.12),Pull (-14.68,-37.32) (-12.88,-38.51),Pull (-41.50,-68.16) (-69.24,-37.92),Pull (-67.59,-37.02) (-65.94,-36.12)]
  |> filled (rgb 204 0 0)
  |> addOutline (solid 0.75) (rgb 184 0 0)
  ,
  curve (-78.53,-64) [Pull (-78.53,-49.31) (-78.53,-34.62),Pull (-79.28,-34.62) (-80.03,-34.62),Pull (-80.03,-33.12) (-80.03,-31.62),Pull (-79.28,-31.62) (-78.53,-31.62),Pull (-78.53,-30.42) (-78.53,-29.22),Pull (-79.96,-27.76) (-80.03,-25.03),Pull (-79.22,-21.19) (-74.94,-20.83),Pull (-70.76,-21.72) (-70.74,-25.33),Pull (-70.69,-27.86) (-72.24,-28.92),Pull (-72.39,-30.42) (-72.54,-31.92),Pull (-71.79,-31.92) (-71.04,-31.92),Pull (-70.14,-30.63) (-68.04,-31.02),Pull (-66.27,-31.79) (-67.14,-34.92),Pull (-66.11,-35.49) (-65.64,-36.42),Pull (-67.59,-37.47) (-69.54,-38.51),Pull (-69.89,-37.07) (-69.84,-35.82),Pull (-70.71,-35.51) (-71.34,-34.92),Pull (-71.79,-34.92) (-72.24,-34.92),Pull (-72.24,-54.33) (-72.24,-63.70),Pull (-75.39,-63.70) (-78.53,-63.70)]
  |> filled (rgb 191 161 83)
  |> addOutline (solid 0.75) (rgb 171 141 63)
  ,
  curve (-3.896,-64) [Pull (-3.896,-49.46) (-3.896,-34.92),Pull (-2.997,-34.92) (-2.098,-34.92),Pull (-2.098,-33.42) (-2.098,-31.92),Pull (-2.997,-31.92) (-3.896,-31.92),Pull (-3.896,-30.57) (-3.896,-29.22),Pull (-1.797,-27.70) (-2.098,-25.03),Pull (-2.666,-21.29) (-6.594,-20.83),Pull (-10.85,-21.07) (-11.39,-25.03),Pull (-11.60,-27.76) (-9.892,-29.22),Pull (-9.892,-30.57) (-9.892,-31.92),Pull (-10.34,-31.92) (-10.79,-31.92),Pull (-11.65,-30.77) (-13.18,-31.02),Pull (-15.48,-31.62) (-14.98,-34.62),Pull (-16.28,-35.02) (-16.78,-36.42),Pull (-14.83,-37.47) (-12.88,-38.51),Pull (-12.20,-37.67) (-12.59,-35.82),Pull (-11.58,-35.36) (-11.09,-34.62),Pull (-10.49,-34.62) (-9.892,-34.62),Pull (-9.892,-49.16) (-9.892,-63.70),Pull (-7.044,-63.70) (-4.196,-63.70)]
  |> filled (rgb 191 161 83)
  |> addOutline (solid 0.75) (rgb 171 141 63)
  ,
  circle 5.5
  |> filled (rgb 191 161 83)
  |> addOutline (solid 0.75) (rgb 171 141 63)
  |> move (-75.5, -25.5)
  ,
  circle 5.5
  |> filled (rgb 191 161 83)
  |> addOutline (solid 0.75) (rgb 171 141 63)
  |> move (-7, -25.5)
  ] |> group |> move (0, -12)

button txt (x, y) msg c1 c2 c3 model = 
    let 
      onThis = model.hoveredButton == (x,y)
    in 
      [ 
        rect 51 11
        |> filled c1
        |> makeTransparent 0.5
        , 
        rect 50 10  
        |> filled c3
        |> addOutline (solid 1) (if onThis then c1 else c2)
        |> move (0, if onThis then 1.5 else 0)
        ,
        text txt 
        |> size 8 
        |> customFont "Eczar"
        |> centered 
        |> bold
        |> filled c1
        |> move (0,-2.5) 
        |> move (0, if onThis then 1.5 else 0)
      ] |> group
        |> move (x, y)
        |> notifyTap msg
        |> notifyEnter (HoverOver (x, y))
        |> notifyLeave (LeaveHover)
        
title model =
  [ 
    square 200
    |> filled (rgb 233 207 171)
    ,
    overheadLight grad
    ,
    overheadLight grad
    |> move (50, 0)
    ,
    overheadLight grad
    |> move (100, 0)
    ,
    square 200
    |> filled (rgb 233 207 171)
    |> makeTransparent (sin(model.time*2))
    ,
    titleScreen model "Museum Nightwatch"
    |> move (-65, 25)
    ,
    button ("Play") (0,-7) (Play) (rgb 78 52 35) (rgb 191 161 83) white model 
    ,
    button ("Tutorial") (0,-25) (GoToTutorial) (rgb 78 52 35) (rgb 191 161 83) white model 
    ,
    rope
    |> move (6, 0)
    ,
    rope
    |> move (74.5, 0)
    ,
    rope
    |> move (143, 0)
    ,
    rope
    |> move (-62.5, 0)
    ,
    titleLight
    |> move (if model.time < 2 then (model.time*50 - 30, 25) else if model.time >= 2 && model.time < 3.75 then (-(model.time - 2)*70 + 70, -(model.time - 2)*20 + 25) else if model.time >= 3.75 && model.time < 10 then ((model.time - 3.75)*13 - 52.5, -(model.time - 3.75)*2 - 10) else if model.time >= 10 && model.time < 12.25 then (-(model.time - 10)*6 + 28.75, -(model.time - 10) - 22.5) else (15, -25))
    |> scale (if model.time < 3.75 then 1 else if model.time >= 3.75 && model.time < 12.25 then ((model.time - 3.75) + 1) else 9.6)
  ]
  
endScreen model =
  [
    loadFont "https://fonts.googleapis.com/css2?family=Eczar:wght@400..800&family=Rokkitt:ital,wght@0,100..900;1,100..900&display=swap"
    ,
    square 200
    |> filled black
    ,
    overheadLight gradR
    ,
    overheadLight gradR
    |> move (50, 0)
    ,
    overheadLight gradR
    |> move (100, 0)
    ,
    square 200
     |> filled (if sin(model.time*15) < 0 then black else (rgba 0 0 0 0))
    ,
    text "Game Over"
    |> customFont "Eczar"
    |> bold
    |> centered
    |> filled red
    |> scale 1.25
    |> move (0, 10)
    ,
    button ("Restart") (0,-17) (Restart) red red black model 
  ]
  
frame c1 c2 =
  [
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-37.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-32.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-27.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-22.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-17.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-12.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-7.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-2.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (2.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (7.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (12.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (17.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (22.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (27.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (32.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (37.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, 30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, 25)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, 20)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, 15)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, 10)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, 5)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, 0)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, -5)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, -10)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, -15)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, -20)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, -25)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (42.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-37.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-32.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-27.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-22.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-17.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-12.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-7.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-2.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (2.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (7.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (12.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (17.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (22.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (27.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (32.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (37.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, -30)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, 25)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, 20)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, 15)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, 10)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, 5)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, 0)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, -5)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, -10)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, -15)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, -20)
   ,
   circle 3
   |> outlined (solid 0.6) (rgb 171 141 63)
   |> move (-42.5, -25)
   ,
   rect 88 62
   |> filled (rgb 171 141 63)
   ,
   rect 87 61
   |> filled  c2
   ,
   rect 81 55
   |> filled (rgb 171 141 63)
   ,
   rect 0.5 20
   |> filled (rgb 171 141 63)
   |> rotate (degrees -45)
   |> move (36.5, 23.5)
   ,
   rect 0.5 20
   |> filled (rgb 171 141 63)
   |> rotate (degrees 45)
   |> move (-36.5, 23.5)
   ,
   rect 0.5 20
   |> filled (rgb 171 141 63)
   |> rotate (degrees -45)
   |> move (-36.5, -23.5)
   ,
   rect 0.5 20
   |> filled (rgb 171 141 63)
   |> rotate (degrees 45)
   |> move (36.5, -23.5)
    ,
   rect 80 55
   |> filled c1
  ] |> group
    |> scale 0.8
         
transition t animation = [square 250
                      |> filled black
                      |> rotate (degrees 45)
                      |> move (case animation of
                                FromTitle _ -> (200-t*200, 200-t*200)
                                ToWaiting _ -> (-t*200, -t*200)
                                FromWaiting _ -> (200-t*200, 200-t*200)
                                ToEnd _ -> (-t*200, -t*200)
                                FromEnd _ -> (200-t*200, 200-t*200)
                                ToTitle _ -> (-t*200, -t*200)
                                FromTitleT _ -> (200-t*200, 200-t*200)
                                ToTutorial _ -> (-t*200, -t*200)
                                FromTutorial _ -> (200-t*200, 200-t*200)
                                ToMainMenu _ -> (-t*200, -t*200)
                                _ -> (300, 300)
                              )
               ]
  
thief model =
 [
   curve (-85.73,16.337) [Pull (-85.73,5.3957) (-85.73,-5.545),Pull (-82.88,-7.793) (-80.03,-10.04),Pull (-77.93,-8.543) (-75.84,-7.044),Pull (-68.42,-3.018) (-67.44,4.0468),Pull (-65.76,6.1451) (-65.04,8.2435),Pull (-65.79,14.238) (-66.54,20.234),Pull (-72.39,21.583) (-85.73,16.337)]
   |> filled (rgb 242 196 167)
   ,   
   curve (-85.43,16.936) [Pull (-85.28,18.885) (-85.13,20.833),Pull (-82.07,28.171) (-70.74,26.229),Pull (-61.43,24.024) (-62.65,13.939),Pull (-74.19,15.587) (-85.73,17.236)]
   |> filled (rgb 37 37 37)
   , 
   curve (-85.43,19.934) [Pull (-69.90,26.047) (-62.05,13.039),Pull (-61.22,8.3216) (-64.74,8.2435),Pull (-71.80,17.560) (-85.73,16.037),Pull (-85.73,17.985) (-85.73,19.934)]
   |> filled (rgb 53 53 53)
   ,         
   curve (-74.64,3.7470) [Pull (-73.83,-0.561) (-77.93,1.0491),Pull (-74.08,-0.141) (-74.64,3.7470)]
   |> filled (rgb 216 160 117)
   |> addOutline (solid 0.25) (rgb 216 160 117)
   ,   
   curve (-77.63,1.9484) [Pull (-78.38,1.9484) (-79.13,1.9484),Pull (-78.53,1.7985) (-77.63,1.9484)]
   |> filled (rgb 216 160 117)
   |> addOutline (solid 0.15) (rgb 216 160 117)
   |> move (-0.25, -0.25)
   ,   
   curve (-82.43,-2.847) [Pull (-81.75,-4.397) (-80.03,-4.346),Pull (-81.23,-4.317) (-82.43,-2.847)]
   |> filled (rgb 216 160 117)
   |> addOutline (solid 0.15) (rgb 216 160 117)
   , 
   curve (-80.93,0.7494) [Pull (-80.01,-1.649) (-77.33,-2.248),Pull (-75.95,-2.197) (-77.33,-3.147),Pull (-80.87,-4.928) (-82.13,0.4496),Pull (-81.95,1.6195) (-80.93,0.7494)]
   |> filled white
   ,  
   curve (-85.73,14.538) [Pull (-85.73,11.241) (-85.73,7.9437),Pull (-83.42,3.9550) (-77.63,4.6463),Pull (-74.99,5.1169) (-73.74,3.1475),Pull (-71.60,0.1482) (-68.34,1.3489),Pull (-66.84,4.3466) (-65.34,7.3442),Pull (-72.15,16.961) (-86.03,14.538)]
   |> filled (rgb 37 37 37)
   ,   
   curve (-83.33,9.7423) [Pull (-77.84,12.892) (-77.03,8.2435),Pull (-76.84,6.1343) (-79.13,6.1451),Pull (-81.46,6.1743) (-83.03,8.2435),Pull (-83.62,8.9428) (-83.33,9.7423)]
   |> filled (rgb 242 196 167)
   ,
   curve (-68.04,3.7470) [Pull (-68.90,8.4564) (-73.44,5.2459),Pull (-73.80,4.6463) (-73.44,4.0468),Pull (-71.04,1.6974) (-68.64,2.5480),Pull (-67.82,3.1475) (-68.04,3.7470)]
   |> filled (rgb 242 196 167)
   ,
   curve (-80.93,9.1428) [Pull (-78.81,9.8233) (-78.53,7.9437),Pull (-78.83,8.3934) (-79.13,8.8430),Pull (-78.94,7.6035) (-80.03,7.6440),Pull (-80.78,7.9134) (-80.33,9.1428)]
   |> filled (rgb 0 100 0)
   ,  
   curve (-72.24,5.2459) [Pull (-69.79,5.9263) (-69.54,4.0468),Pull (-69.84,4.4964) (-70.14,4.9461),Pull (-70.21,3.4866) (-71.64,3.7470),Pull (-72.37,4.2964) (-71.34,5.2459)]
   |> filled (rgb 0 100 0)
   ,   
   curve (-81.23,13.039) [Pull (-78.46,11.760) (-76.14,10.042),Pull (-75.64,8.8525) (-77.33,9.1428),Pull (-78.94,10.201) (-80.63,12.740)]
   |> filled (rgb 98 49 26)
   ,  
   curve (-66.24,6.1451) [Pull (-68.29,7.1346) (-71.34,7.6440),Pull (-72.90,7.3746) (-71.34,6.1451),Pull (-68.56,5.6851) (-66.54,6.1451)]
   |> filled (rgb 98 49 26)
   ,  
   curve (-85.73,-3.747) [Pull (-80.73,-11.81) (-75.54,-7.044),Pull (-74.99,-7.843) (-76.44,-9.442),Pull (-72.25,-17.86) (-72.54,-22.33),Pull (-74.18,-36.64) (-85.43,-42.11)]
   |> filled (rgb 37 37 37)
   ,   
   curve (-85.73,-7.644) [Pull (-80.55,-12.58) (-76.14,-9.442),Pull (-74.69,-13.03) (-73.44,-16.63),Pull (-79.58,-14.23) (-85.73,-11.24),Pull (-85.88,-9.592) (-85.73,-7.644)]
   |> filled (rgb 211 211 211)
   |> move (0.1, 0)
   ,   
   curve (-85.73,-17.53) [Pull (-79.13,-19.98) (-72.54,-22.03),Pull (-72.52,-24.73) (-73.74,-27.42),Pull (-79.73,-25.43) (-85.73,-23.23),Pull (-85.73,-20.38) (-85.73,-17.53)]
   |> filled (rgb 211 211 211)
   |> move (0.1, 0)
   ,   
   curve (-85.73,-28.62) [Pull (-80.63,-30.65) (-75.54,-31.92),Pull (-76.73,-34.35) (-78.53,-36.42),Pull (-82.13,-35.53) (-85.73,-34.32),Pull (-85.88,-31.47) (-85.73,-28.62)]
   |> filled (rgb 211 211 211)
   |> move (0.5, 0)
   ,
   rect 20 200
   |> filled black
   |> move (-95.25, 0)
   ,
   curve (-84.23,45.414) [Pull (-86.93,45.414) (-89.62,45.414),Pull (-92.02,43.915) (-89.62,42.416),Pull (-93.04,41.098) (-90.82,39.419),Pull (-94.41,36.970) (-89.92,35.522),Pull (-91.52,34.173) (-89.33,32.824),Pull (-86.03,32.224) (-82.73,32.824),Pull (-80.55,34.323) (-82.73,35.822),Pull (-79.50,37.470) (-83.03,39.119),Pull (-80.06,41.098) (-83.93,42.117),Pull (-79.89,44.105) (-84.53,45.414)]
   |> filled (rgb 56 56 56)
   ,  
   curve (-85.43,32.524) [Pull (-85.58,29.976) (-85.73,27.428),Pull (-77.59,26.116) (-85.73,32.524)]
   |> filled (rgb 56 56 56)
   ,   
   curve (-89.62,-41.21) [Pull (-85.66,-40.44) (-82.73,-41.51),Pull (-80.54,-42.86) (-82.43,-44.81),Pull (-79.47,-46.76) (-83.03,-48.71),Pull (-80.30,-50.36) (-83.33,-52.00),Pull (-80.46,-53.65) (-83.63,-55.30),Pull (-86.93,-56.21) (-90.22,-55.00),Pull (-91.85,-53.64) (-89.92,-52.00),Pull (-92.85,-50.21) (-90.82,-48.41),Pull (-94.41,-46.31) (-89.92,-44.21),Pull (-91.53,-42.61) (-89.62,-41.21)]
   |> filled (rgb 56 56 56)
 ] |> group 
   |> move (case model.animation of
            Stolen _ ->  (if model.transitionTime <= 1 then (-50 + (model.transitionTime)*50, 0) else if model.transitionTime >= 3 then (-(model.transitionTime-3)*50, 0) else (0, 0))
            _ -> (0, 0)
            )

countdownText t =
  [
   square 200
   |> filled black
   ,
   if t <= 2 then
     text3 t
   else if t <= 4 then
     text2 t
   else if t <= 6 then
     text1 t
   else 
     circle 0 |> filled (rgba 0 0 0 0)
  ]
  
text3 t =
  [
  "3"
   |> text
   |> fixedwidth
   |> filled white
   |> scale (t*3)
   |> makeTransparent (1 - (t/2))
   |> move (-t*10, -t*10)
  ] |> group
  
text2 t =
  [
  "2"
   |> text
   |> fixedwidth
   |> filled white
   |> scale ((t-2)*3)
   |> makeTransparent (1 - ((t-2)/2))
   |> move (-(t-2)*10, -(t-2)*10)
  ] |> group
  
text1 t =
  [
  "1"
   |> text
   |> fixedwidth
   |> filled white
   |> scale ((t-4)*3)
   |> makeTransparent (1 - ((t-4)/2))
   |> move (-(t-4)*10, -(t-4)*10)
  ] |> group

endTimer model = [
  if model.timer > 0 && model.timer < 6 then 
    String.fromInt (round model.timer) |> text |> bold |> fixedwidth |> filled (rgba 255 0 0 (125 + 125 * sin (20 * model.time))) |> move (-70, -50)
  else if model.timer < 0 then
    circle 0 |> filled (rgba 0 0 0 0)
  else
    circle 0 |> filled (rgba 0 0 0 0)
  ]
  
x1 = group
  [
    rect 5 20
    |> filled (rgb 255 0 0)
    |> rotate (degrees -45)
    |> move (115, 15)
    |> scale 0.75
    ,
    rect 5 20
    |> filled (rgb 255 0 0)
    |> rotate (degrees 45)
    |> move (115, 15)
    |> scale 0.75
  ]
  
x2 = group
  [
    x1
    ,
    x1
    |> move (0, -15)
  ]
  
x3 = group
  [
   x2
   ,
   x1 
   |> move (0, -30)
  ]
  
strikeX model =
  [
  case model.strikes of
    0 -> circle 0 |> filled (rgba 0 0 0 0)
    1 -> x1
    2 -> x2
    3 -> x3
    _ -> circle 0 |> filled (rgba 0 0 0 0)
  ]
  
speedMultiplier : Int -> Int -> Float
speedMultiplier score strikes =
    let
        baseMultiplier = 1.0 + (toFloat (score // 5) * 0.25)
        strikeGrace = if strikes > 0 then -0.25 * (toFloat strikes) else 0.0
    in
    max 0.25 (baseMultiplier + strikeGrace)

newLetter tLeft bt idx letter = text (String.fromChar letter) |> fixedwidth |> filled white |> move (toFloat idx * letterWidth - 70, 50) |> makeTransparent 1

myTitle = "Museum Nightwatch"
timeToDrop = 1
halfToAppear = 5
timeToAppear = 2 * halfToAppear
letterWidth = 7
dScale = 0.4375

type alias Model = { time : Float
                   , animation : GuessState
                   , score : Int
                   , pics : List ( Float -> List (Shape Msg) )
                   , correct : Pick
                   , letters : List Char
                   , nextRand : (List Int, Int)
                   , badTime : Float
                   , debug : String
                   , lightX : Float
                   , lightY : Float
                   , hoveredButton : (Float, Float)
                   , timer : Float
                   , strikes : Int
                   , strikeCounter : Int
                   , transitionTime : Float
                   , tutorialCounter : Int
                   }
init : Model
init = { time = 0
       , animation = Startup
       , score = 0
       , pics = [ \ _ -> [],  \ _ -> [],  \ _ -> [],  \ _ -> []]
       , correct = Pick1
       , letters = ['n','o','t',' ','r','e','a','d','y']
       , nextRand = ([-1,-1,-1,-1],0)
       , badTime = 1.5 -- time for the bad-pick animation
       , debug = ""
       , lightX = 0
       , lightY = 0
       , hoveredButton = (200, 200)
       , timer = 25
       , strikes = 0
       , strikeCounter = 0
       , transitionTime = 0
       , tutorialCounter = 0
       }

type GuessState = Waiting              -- waiting for click
                | BadPick Pick Float   -- animating bad pick, with time in seconds left
                | GoodPick Float       -- animating good pick, with time in seconds left
                | Startup              -- waiting for the first random numbers
                | Title
                | FromTitle Float
                | ToWaiting Float
                | FromWaiting Float
                | ToEnd Float
                | FromEnd Float 
                | ToTitle Float
                | Stolen Float
                | Countdown Float
                | FromTitleT Float
                | ToTutorial Float
                | FromTutorial Float
                | ToMainMenu Float
                | End
                | Tutorial
                
type Msg = Tick Float GetKeyState
         | RandIdx (List Int, Int)  -- four pics to display and 0..3 for the one which will be correct
         | Choice Pick              -- message for button
         | MoveLight (Float, Float)
         | HoverOver (Float, Float)
         | LeaveHover
         | Play
         | Restart
         | GoToTutorial
         | Next
         | GoToTitle
         
-- type allowing 4 "picks"
type Pick = Pick0 | Pick1 | Pick2 | Pick3
-- function to show the message to help us understand our program
toString msg = case msg of
                  Tick t _ -> "Tick "++String.fromFloat t
                  RandIdx (idxs,idx) -> "RandIdx["++String.fromInt idx++"] "++(String.concat <| List.intersperse "," <| List.map String.fromInt idxs)
                  Choice Pick0 -> "Choice 0"
                  Choice Pick1 -> "Choice 1"
                  Choice Pick2 -> "Choice 2"
                  Choice Pick3 -> "Choice 3"
                  _ -> ""
                  
-- convert a (random) Int to a Pick
int2Pick i = case i of
               1 -> Pick1
               2 -> Pick2
               3 -> Pick3
               _ -> Pick0
               
-- get one of the first 4 things from the word list, otherwise make it blank
listPick idx lst = case (idx,lst) of
                     (0, x :: _ ) -> x
                     (1, _ :: x :: _ ) -> x
                     (2, _ :: _ :: x :: _ ) -> x
                     (3, _ :: _ :: _ :: x :: _ ) -> x
                     (_, _) -> (\ _ -> [], "")
                     
-- where the different picks will show up on the screen
pickPositions = [ (Pick0, (-42, 20))
                , (Pick1, ( 42, 20))
                , (Pick2, (-42,-36))
                , (Pick3, ( 42,-36))
                ]

update : Msg -> Model -> ( Model, Cmd Msg )
update msg m =
 let model = case msg of
               Tick _ _ -> m
               _ -> { m | debug = toString msg }
 in
  case msg of
    RandIdx (idxsBad,correct) ->
      let
          idxs = removeDups [] idxsBad
          removeDups uniques next =
            case next of
              [] -> uniques
              n :: ns -> removeDups ((fix uniques n)::uniques) ns
          fix uniques n = if List.member n uniques
                          then if n+1 == arrayLength then fix uniques 0 else fix uniques (n+1)
                          else n
      in
          if model.animation == Startup
                                then let
                                       fourWords = List.map getWord idxs
                                       w = Tuple.second <| listPick correct fourWords 
                                     in
                                       ( { model | animation = Title
                                                 , correct = int2Pick correct
                                                 , pics = List.map Tuple.first fourWords
                                                 , letters = stringToChars w
                                         }
                                       , getRandChoices )

                                else ( { model | nextRand = (idxs,correct) }, Cmd.none )
    Tick t _ ->
      let 
        lastTime = if model.time > 0 then model.time else t
        deltaTime = (t - lastTime)
        newDeltaTime = (t - lastTime)*(speedMultiplier model.score model.strikes)
        newTimer = case model.animation of
          Waiting -> model.timer - newDeltaTime
          BadPick pick tLeft -> model.timer - newDeltaTime
          _ -> model.timer
        (timer, strikes, strikeCounter) =
          if newTimer < 0 then
            (25, model.strikes + 1, model.strikeCounter + 1)      
          else
            (newTimer, model.strikes, model.strikeCounter)
      in case model.animation of
           Title -> ( { model | time = t
                                 , animation = Title
                                 , tutorialCounter = 0
                                 , score = 0
                         }
                       , Cmd.none )
           End -> ( { model | time = t
                              , animation = End
                         }
                       , Cmd.none )
           FromTitle tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = ToWaiting 1
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = FromTitle (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           ToWaiting tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = Countdown 6
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = ToWaiting (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           FromWaiting tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = ToEnd 1
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = FromWaiting (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           ToEnd tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = End
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = ToEnd (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           ToTitle tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = Title
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = ToTitle (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           FromEnd tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = ToTitle 1
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = FromEnd (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           Countdown tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = Waiting
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = Countdown (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           FromTitleT tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = ToTutorial 1
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = FromTitleT (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           ToTutorial tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = Tutorial
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = ToTutorial (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           FromTutorial tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = ToMainMenu 1
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = FromTutorial (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           ToMainMenu tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = Title
                               , transitionTime = 0
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = ToMainMenu (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                         }
                       , Cmd.none )
           Tutorial -> ( { model | time = t
                          , animation = Tutorial
                          }
                        , Cmd.none )
           Stolen tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = (if strikes == 3 then FromWaiting 1 else Waiting)
                               , transitionTime = 0
                               , strikeCounter = model.strikeCounter + 1
                               , strikes = strikes
                               , timer = timer
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = Stolen (tLeft - (t - lastTime))
                               , transitionTime = model.transitionTime + (t - lastTime)
                               , strikes = strikes
                               , timer = timer
                         }
                       , Cmd.none )
           Startup ->  ( { model | time = t
                                 , animation = Startup
                         }
                       , Cmd.none )
           Waiting ->  if strikeCounter == 1 || strikeCounter == 3 || strikeCounter == 5
                         then ( { model | time = t
                               , animation = Stolen 4
                               , strikes = strikes
                               , timer = timer
                               , strikeCounter = model.strikeCounter + 1
                                }
                               , Cmd.none )
                        else ( { model | time = t
                               , animation = Waiting
                               , timer = timer
                               , strikes = strikes
                                }
                               , Cmd.none )
           BadPick pick tLeft
             -> if tLeft < (t - lastTime)
                  then ( { model | time = t
                               , animation = Waiting
                               , timer = timer
                               , strikes = strikes
                         }
                       , Cmd.none )
                  else ( { model | time = t
                               , animation = BadPick pick (tLeft - (t - lastTime))
                               , timer = timer
                               , strikes = strikes
                         }
                       , Cmd.none )
           GoodPick tLeft
             -> if tLeft < (t - lastTime)
                  then let
                         (idxs,correct) = model.nextRand
                         fourWords = List.map getWord idxs
                         w = Tuple.second <| listPick correct fourWords
                       in
                         ( { model | animation = Waiting
                                   , correct = int2Pick correct
                                   , pics = List.map Tuple.first fourWords
                                   , letters = stringToChars w
                                   , badTime = model.badTime * 0.9
                                   , time = t
                                   , timer = newTimer + 3
                                   , strikes = strikes
                           }
                         , getRandChoices )
                  else ( { model | time = t
                               , animation = GoodPick (tLeft - (t - lastTime))
                               , timer = newTimer
                               , strikes = strikes
                         }
                       , Cmd.none )

    Choice pick
      -> case model.animation of
           Waiting
             -> if pick == model.correct
                  then
                    ( { model | animation = GoodPick 1.5, score = model.score + 1 }, getRandChoices )
                  else
                    ( { model | animation = BadPick pick 1 }, Cmd.none )
           other -> ( model , Cmd.none )
    MoveLight (x, y) -> ( { model | lightX = x, lightY = y }, Cmd.none )
    HoverOver (x,y) -> ( { model | hoveredButton = (x,y) }, Cmd.none )
    LeaveHover -> ( { model | hoveredButton = (-200, 200) }, Cmd.none )
    Play -> ( { model | animation = FromTitle 1 }, Cmd.none )
    GoToTutorial -> ( { model | animation = FromTitleT 1}, Cmd.none )
    Next -> ( { model | tutorialCounter = model.tutorialCounter + 1}, Cmd.none )
    GoToTitle -> ( { model | animation = FromTutorial 1}, Cmd.none )
    Restart -> ( {model | animation = FromEnd 1
                          , strikes = 0
                          , strikeCounter = 0
                          , timer = 25 
                          }, Cmd.none )
    
view : Model -> Collage Msg
view model = collage 192 128
  <| ( case model.animation of
           Title -> title model
           End -> endScreen model
                       ++["Final Score: " ++ String.fromInt model.score |> text |> customFont "Eczar" |> bold |> centered |> filled red |> move (0, -6) |> scale 0.8]
           Startup ->  [ text "Read the word and tap on the picture!" |> size 20 |> filled (rgb 255 0 255) ]
           Waiting ->  waiting model
           BadPick pick tLeft
                   ->  background
                       ++[frame white (rgb 191 161 83) |> move (-42, 20)]
                       ++[frame white (rgb 191 161 83) |> move (42, 20)]
                       ++[frame white (rgb 191 161 83) |> move (-42, -36)]
                       ++[frame white (rgb 191 161 83) |> move (42, -36)]
                       ++ gameplay model
                       ++ ( List.map2 (drawBad pick tLeft) model.pics pickPositions )
                       ++ gameplay model
                       ++ [rect 192 128 |> filled (rgba 0 0 0 0)]
                       ++ ( List.indexedMap (newLetter 0 1) model.letters)
                       ++["Score: " ++ String.fromInt model.score |> text |> fixedwidth |> filled white |> move (10,50)]
                       ++ strikeX model
                       ++ [String.fromInt (round model.timer) |> text |> fixedwidth |> filled white |> move (-70, -50)]
           GoodPick tLeft
                   ->  background
                       ++[frame white (rgb 191 161 83) |> move (-42, 20)]
                       ++[frame white (rgb 191 161 83) |> move (42, 20)]
                       ++[frame white (rgb 191 161 83) |> move (-42, -36)]
                       ++[frame white (rgb 191 161 83) |> move (42, -36)]
                       ++ ( List.map2 (drawGood model.correct (max 0 (2 * (model.badTime - tLeft) / model.badTime)) model.time) model.pics pickPositions )
                       ++ ( List.indexedMap (newLetter tLeft model.badTime) model.letters)
                       ++["Score: " ++ String.fromInt model.score |> text |> fixedwidth |> filled white |> move (10,50)]
                       ++ strikeX model
           FromTitle tLeft
                   -> title model
                      ++ transition model.transitionTime model.animation
                      ++ [rect 192 128 |> filled (rgba 0 0 0 0)]
           ToWaiting tLeft
                   -> [rect 192 128 |> filled black]
                      ++ ( List.indexedMap (newLetter 0 1) model.letters)
                      ++ ["Score: " ++ String.fromInt model.score |> text |> fixedwidth |> filled white |> move (10,50)]
                      ++ [String.fromInt (round model.timer) |> text |> fixedwidth |> filled (if model.timer <= 5 then (rgb 255 (125 + 125 * sin (20 * model.time)) (125 + 125 * sin (20 * model.time))) else white) |> move (-70, -50)]
                      ++ transition model.transitionTime model.animation
           FromWaiting tLeft -> waiting model
                      ++ transition model.transitionTime model.animation
                      ++ [rect 192 128 |> filled (rgba 0 0 0 0)]
           ToEnd tLeft -> endScreen model
                      ++["Final Score: " ++ String.fromInt model.score |> text |> customFont "Eczar" |> bold |> centered |> filled red |> move (0, -6) |> scale 0.8]
                      ++ transition model.transitionTime model.animation
                      ++ [rect 192 128 |> filled (rgba 0 0 0 0)]
           FromEnd tLeft -> endScreen model
                      ++["Final Score: " ++ String.fromInt model.score |> text |> customFont "Eczar" |> bold |> centered |> filled red |> move (0, -6) |> scale 0.8]
                      ++ transition model.transitionTime model.animation
                      ++ [rect 192 128 |> filled (rgba 0 0 0 0)]
           ToTitle tLeft -> title model
                      ++ transition model.transitionTime model.animation
                      ++ [rect 192 128 |> filled (rgba 0 0 0 0)] 
           FromTitleT tLeft -> title model
                      ++ transition model.transitionTime model.animation
                      ++ [rect 192 128 |> filled (rgba 0 0 0 0)] 
           ToTutorial tLeft -> background
                      ++[frame white (rgb 191 161 83) |> move (-42, 20)]
                      ++[frame white (rgb 191 161 83) |> move (42, 20)]
                      ++[frame white (rgb 191 161 83) |> move (-42, -36)]
                      ++[frame white (rgb 191 161 83) |> move (42, -36)]
                      ++ ( List.map2 (drawPic model.time) model.pics pickPositions )
                      ++ [curve (-95.92,63.700) [Pull (-95.92,0) (-95.92,-63.70),Pull (-0.149,-63.70) (95.625,-63.70),Pull (95.625,-4.046) (95.625,55.606),Pull (97.490,69.623) (56.355,64),Pull (28.477,38.220) (0.5995,12.440),Pull (11.984,10.455) (12.290,0.1498),Pull (11.435,-11.68) (-0.299,-12.44),Pull (-12.02,-11.01) (-12.59,0.4496),Pull (-11.24,11.584) (0.2997,12.440),Pull (28.477,38.220) (56.655,64),Pull (-19.63,63.850) (-95.92,63.700)]
                         |> filled black
                         |> scale 2.1
                         |> move (50*sin(model.time), -35)
                         ,
                         rect 100 200
                         |> filled black
                         |> move (50, 127)
                         |> move (50*sin(model.time), -35)
                         ,
                         circle 27
                         |> outlined (solid 3) black
                         |> move (50*sin(model.time), -35)
                         ]
                      ++ tutorial model
                      ++ ( List.indexedMap (newLetter 0 1) model.letters)
                      ++ transition model.transitionTime model.animation
                      ++ [rect 192 128 |> filled (rgba 0 0 0 0)] 
           FromTutorial tLeft -> tutorial model
                      ++ ( List.indexedMap (newLetter 0 1) model.letters)
                      ++ transition model.transitionTime model.animation
                      ++ [rect 192 128 |> filled (rgba 0 0 0 0)] 
           ToMainMenu tLeft -> title model
                      ++ transition model.transitionTime model.animation
                      ++ [rect 192 128 |> filled (rgba 0 0 0 0)] 
           Countdown tLeft 
                   -> countdownText model.transitionTime
                      ++ ( List.indexedMap (newLetter 0 1) model.letters)
                      ++ ["Score: " ++ String.fromInt model.score |> text |> fixedwidth |> filled white |> move (10,50)]
                      ++ [String.fromInt (round model.timer) |> text |> fixedwidth |> filled (if model.timer <= 5 then (rgb 255 (125 + 125 * sin (20 * model.time)) (125 + 125 * sin (20 * model.time))) else white) |> move (-70, -50)]
           Stolen tLeft
                  ->  waiting model
                      ++ [thief model]
                      ++ [rect 192 128 |> filled (rgba 0 0 0 0)]
           Tutorial -> background
                      ++[frame white (rgb 191 161 83) |> move (-42, 20)]
                      ++[frame white (rgb 191 161 83) |> move (42, 20)]
                      ++[frame white (rgb 191 161 83) |> move (-42, -36)]
                      ++[frame white (rgb 191 161 83) |> move (42, -36)]
                      ++ ( List.map2 (drawPic model.time) model.pics pickPositions )
                      ++ [curve (-95.92,63.700) [Pull (-95.92,0) (-95.92,-63.70),Pull (-0.149,-63.70) (95.625,-63.70),Pull (95.625,-4.046) (95.625,55.606),Pull (97.490,69.623) (56.355,64),Pull (28.477,38.220) (0.5995,12.440),Pull (11.984,10.455) (12.290,0.1498),Pull (11.435,-11.68) (-0.299,-12.44),Pull (-12.02,-11.01) (-12.59,0.4496),Pull (-11.24,11.584) (0.2997,12.440),Pull (28.477,38.220) (56.655,64),Pull (-19.63,63.850) (-95.92,63.700)]
                         |> filled black
                         |> scale 2.1
                         |> move (50*sin(model.time), -35)
                         ,
                         rect 100 200
                         |> filled black
                         |> move (50, 127)
                         |> move (50*sin(model.time), -35)
                         ,
                         circle 27
                         |> outlined (solid 3) black
                         |> move (50*sin(model.time), -35)
                         ]
                      ++ tutorial model
                      ++ ( List.indexedMap (newLetter 0 1) model.letters)

                       )

waiting model =
                background
                ++[frame white (rgb 191 161 83) |> move (-42, 20)]
                ++[frame white (rgb 191 161 83) |> move (42, 20)]
                ++[frame white (rgb 191 161 83) |> move (-42, -36)]
                ++[frame white (rgb 191 161 83) |> move (42, -36)]
                ++ ( List.map2 (drawPic model.time) model.pics pickPositions )
                ++ gameplay model
                ++ ( List.indexedMap (newLetter 0 1) model.letters)
                ++ ( List.map2 (drawMsg model.time) model.pics pickPositions )
                ++["Score: " ++ String.fromInt model.score |> text |> fixedwidth |> filled white |> move (10,50)]
                ++ strikeX model
                ++ endTimer model
                ++ [String.fromInt (round model.timer) |> text |> fixedwidth |> filled (if model.timer <= 5 then (rgb 255 (125 + 125 * sin (20 * model.time)) (125 + 125 * sin (20 * model.time))) else white) |> move (-70, -50)]
                       
drawMsg t pic (msg, pos) = group [ rect 80 55 |> filled (rgba 0 0 0 0) |> move pos |> notifyTap (Choice msg) |> notifyMouseMoveAt MoveLight                                   ]
drawPic t pic (msg, pos) = (group <| pic t) |> clip (rect 192 128 |> ghost) |> scale dScale |> move pos
drawBad pick t pic (msg, pos) = if pick == msg
                                  then ((group <| pic t) |> move (10 * cos (30*t),0)) |> clip (rect 192 128 |> ghost) |> scale dScale |> move pos
                                  else (group <| pic t) |> clip (rect 192 128 |> ghost) |> scale dScale |> move pos
drawGood pick frac t pic (msg, pos) = if pick == msg
                                  then ((group <| pic t)) |> clip (rect 192 128 |> ghost) |> scale dScale |> move pos
                                  else (group <| pic t ++ [rect 192 128 |> filled (rgba 233 207 171 frac)] ) |> clip (rect 192 128 |> ghost) |> scale dScale |> move pos
getRandChoices = Random.generate RandIdx (Random.map5 ( \ i j k l c -> ([i,j,k,l],c) ) oneRandIdx oneRandIdx oneRandIdx oneRandIdx rand0to3)
oneRandIdx = Random.int 0 (arrayLength - 1)
rand0to3   = Random.int 0 3