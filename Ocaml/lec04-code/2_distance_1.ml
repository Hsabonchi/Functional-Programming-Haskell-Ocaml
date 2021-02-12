type point = float * float;;

let distance (p1:point) (p2:point) : float = 
  let (x1,y1) = p1 in
  let (x2,y2) = p2 in
    sqrt ((x2 -. x1) *. (x2 -. x1) +.
          (y2 -. y1) *. (y2 -. y1))
;;



let pt1 = (3.0, 5.0);;
let pt2 = (0.0, 1.0);;
let dist12 = distance pt1 pt2;;
