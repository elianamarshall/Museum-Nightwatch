-- 1. type your word in between the ""s
word = "ant"

-- 2. draw your word using Shapes
myShapes t = 
  [
     ant |> scale 3.3
  ]

ant = group 
  [
  curve (-3,2) [Pull (-3,-2) (0,-1)]
  |> outlined (solid 0.5) black
  |> move (-1.5,4)
  ,
  curve (-1.5,-3) [Pull (0,0) (2,-2)]
  |> outlined (solid 0.5) black
  |> move (-4,2)
  ,
  curve (-1.5,-5) [Pull (0,0) (2,-3)]
  |> outlined (solid 0.5) black |> rotate (degrees 10)
  |> move (-5,0)
  ,
  curve (-3,2) [Pull (-3,-2) (0,-1)]
  |> outlined (solid 0.5) black
  |> move (-1.5,4) |> mirrorX
  ,
  curve (-1.5,-3) [Pull (0,0) (2,-2)]
  |> outlined (solid 0.5) black
  |> move (-4,2) |> mirrorX
  ,
  curve (-1.5,-5) [Pull (0,0) (2,-3)]
  |> outlined (solid 0.5) black |> rotate (degrees 10)
  |> move (-5,0) |> mirrorX
  ,
  circle 3
  |> filled black
  |> move (0,6)
  ,
  oval 5 6.5
  |> filled black
  |> move (0,1)
  ,
  oval 9 12
  |> filled black
  |> move (0,-7)
  ,
  curve (-4,0) [Pull (0,-2) (4,0) ]
  |> outlined (solid 0.5) (rgb 65 65 65)
  |> move (0,-4)
  |> clip (oval 9 12 |> filled black |> move (0,-7))
  ,
  curve (-6,0) [Pull (0,-3) (6,0) ]
  |> outlined (solid 0.6) (rgb 65 65 65)
  |> move (0,-7)
  |> clip (oval 9 12 |> filled black |> move (0,-7))
  ,
  curve (-4,0) [Pull (0,-1.5) (4,0) ]
  |> outlined (solid 0.4) (rgb 65 65 65)
  |> move (0,-11)
  |> clip (oval 9 12 |> filled black |> move (0,-7))
  ,
  curve (0,-3) [Pull (1,1.5) (2,0) ]
  |> outlined (solid 0.4) black
  |> move (1,11)
  ,
  curve (0,-3) [Pull (1,1.5) (2,0) ]
  |> outlined (solid 0.4) black
  |> move (1,11)
  |> mirrorX
  ]