-- 1. type your word in between the ""s
word = "parrotfish"

-- 2. draw your word using Shapes
myShapes t = 
  [
     parrotFish t
     |> scale 1.2
     |> move (5,0)
  ]

parrotFish t = group
  [
  oval 40 17 -- top fin
  |> filled (gradient [stop (hsl (degrees 256) 0.298 0.57) 0
                     , stop (hsl (degrees 31) 0.975 0.57) 50])
  |> rotate (degrees -5)
  |> move (0,13)
  ,
  oval 30 12 -- bottom fin
  |> filled (gradient [stop (hsl (degrees 256) 0.298 0.57) 0
                     , stop (hsl (degrees 31) 0.975 0.57) 50])
  |> rotate (degrees 8)
  |> move (-5,-13)
  ,
  -- body
  square 100
  |> filled (gradient [stop (hsl (degrees 160) 0.619 0.53) 0
                     , stop (hsl (degrees 31) 0.975 0.57) 25
                     , stop (hsl (degrees 52) 0.975 0.57) 30])
  |> rotate (degrees -90)    
  |> clip (
    [
    oval 34 60 
    |> ghost
    |> rotate (degrees -90) 
    ,
    oval 20 12 -- tail
    |> filled black
    |> rotate (degrees -20)
    |> move (-32,3)
    |> rotate (degrees 2*sin(2*t))
    ,
    oval 20 12 -- tail
    |> filled black
    |> rotate (degrees 20)
    |> move (-32,-3)
    |> rotate (degrees 2*sin(2*t))
    ] |> group 
  )
  |> subtract (wedge 4 0.5 |> ghost |> rotate (degrees 90) |> move (28,-3.5) )
  |> subtract (wedge 3.5 0.5 |> ghost |> rotate (degrees -90) |> move (27.5,-3) )
  ,
  -- mouth
    [ wedge 4 0.5
    |> filled (hsl (degrees 256) 0.5 0.6)
    |> rotate (degrees 90)
    |> scaleY 1.3
    |> move (5,0)
    |> rotate (degrees (abs(10*sin(t))))
    ,
    wedge 3.5 0.5
    |> filled (hsl (degrees 256) 0.5 0.6)
    |> rotate (degrees 90)
    |> move (4.5,-0.5)
    |> rotate (degrees (abs(10*sin(t))))
    |> mirrorY ] |> group
  |> move (23,-3.5)  
  ,
  -- eye
  oval 8 10 
  |> filled white
  |> move (18,5)
  ,
  oval 5 6
  |> filled black
  |> move (19,5)
  ,
  circle 1
  |> filled white
  |> move (18,6)
  ]