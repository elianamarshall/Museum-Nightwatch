-- 1. type your word in between the ""s
word = "panda"

-- 2. draw your word using Shapes
myShapes t = 
  [  
     panda
     |> scale 1.6
     |> move (7,15)
  ]

panda = group
  [
  bamboo
  |> rotate (degrees 12)
  |> move (-21,-13)
  ,
  roundedRect 17 7 3 -- left arm
  |> filled black
  |> rotate (degrees 30)
  |> move (-12,-15)
  ,
  roundedRect 17 7 3 -- right arm
  |> filled black
  |> rotate (degrees -30)
  |> move (12,-15)
  ,
  roundedRect 23 23 9 -- body
  |> filled black
  |> move (0,-21)
  , 
  roundedRect 10 15 5 -- left leg
  |> filled black
  |> move (-5,-31)
  , 
  roundedRect 10 15 5 -- right leg
  |> filled black
  |> move (5,-31)
  ,
  roundedRect 20 18 8 -- belly
  |> filled white
  |> move (0,-22)
  ,
  circle 6.5 -- left ear
  |> filled black
  |> move (-10,12)
  ,
  circle 6.5 -- rihgt ear
  |> filled black
  |> move (10,12)
  ,
  roundedRect 29 26 14 -- face
  |> filled white
  |> addOutline (solid 0.7) black
  ,
  oval 11 10 -- left eye patch
  |> filled black
  |> rotate (degrees 15)
  |> move (-6,1)
  ,
  oval 11 10 -- right eye patch
  |> filled black
  |> rotate (degrees -15)
  |> move (6,1)
  ,
  triangle 2 -- nose
  |> filled black
  |> rotate (degrees 30)
  |> move (0,-6)
  ,
  rect 0.5 2 
  |> filled black
  |> move (0,-8)
  ,
  curve (-3,0) [Pull (0,-2) (3,0)] -- mouth
  |> outlined (solid 0.5) black
  |> move (0,-8)
  ,
  curve (-2,0) [Pull (0,3) (2,0)] -- left eye 
  |> outlined (solid 0.7) white
  |> move (-6,0)
  ,
  curve (-2,0) [Pull (0,3) (2,0)] -- right eye
  |> outlined (solid 0.7) white
  |> move (6,0)
  ]
  
bamboo = group
  [
  rect 3 25
  |> filled green
  ,
  rect 3 0.4
  |> filled darkGreen
  ,
  rect 3 0.4
  |> filled darkGreen
  |> move (0,-7)
  ,
  rect 3 0.4
  |> filled darkGreen
  |> move (0,7)
  ,
  curve (-3,0) [Pull (0,2) (3,0)]
  |> outlined (solid 1) green
  |> rotate (degrees -45)
  |> move (-3,5)
  ,
  oval 2 7
  |> filled darkGreen
  |> rotate (degrees 95)
  |> move (-8,7)
  ,
  oval 2 7
  |> filled darkGreen
  |> rotate (degrees 55)
  |> move (-7,9)
  ]  