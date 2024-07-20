-- 1. type your word in between the ""s
word = "beetle"

-- 2. draw your word using Shapes
myShapes t = 
  [
     beetle |> scale 3 |> move (0,-6)
  ]

beetle = group
  [
  curve (-6,0) [Pull (6,0) (0,7) ]
  |> outlined (solid 1.2) (rgb 0 50 10)
  |> move (7.5,7)
  ,
  curve (0,0) [Pull (10,8) (8,-3) ]
  |> outlined (solid 1.2) (rgb 0 50 10)
  |> move (3,0)
  ,
  curve (-3,0) [Pull (6,2) (4,-7) ]
  |> outlined (solid 1.2) (rgb 0 50 10)
  |> move (6.5,-4)
  ,
  curve (-6,0) [Pull (6,0) (0,7) ]
  |> outlined (solid 1.2) (rgb 0 50 10)
  |> move (7.5,7)
  |> mirrorX
  ,
  curve (0,0) [Pull (10,8) (8,-3) ]
  |> outlined (solid 1.2) (rgb 0 50 10)
  |> move (3,0)
  |> mirrorX
  ,
  curve (-3,0) [Pull (6,2) (4,-7) ]
  |> outlined (solid 1.2) (rgb 0 50 10)
  |> move (6.5,-4)
  |> mirrorX
  ,
  oval 15 22
  |> filled (rgb 15 133 0)
  ,
  oval 8 6
  |> filled (rgb 0 112 17)
  |> move (0,10)
  ,
  oval 2 3
  |> filled black
  |> move (2,11)
  ,
  oval 2 3
  |> filled black
  |> move (-2,11)
  ,
  curve (-6.5,0) [Pull (0,-2) (6.5,0) ]
  |> outlined (solid 1) (rgb 0 90 15)
  |> move (0,5.2)
  ,
  line (0,4) (0,-11)
  |> outlined (solid 1) (rgb 0 90 15)
  ]