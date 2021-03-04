type point = float * float;;
type radius = float;;
type side = float;;
type shape =
      Square of side
    | Ellipse of radius * radius
    | RtTriangle of side * side
    | Polygon of point list
;;

let sq : shape = Square 17.0;;
let ell : shape = Ellipse (1.0, 2.0);;
let rt : shape = RtTriangle(1.0, 1.0);;
let poly : shape = Polygon [(0., 0.); (1., 0.); (0., 1.)];;



let distance (p1:point) (p2:point) : float = 
  let square x = x *. x in
  let (x1,y1) = p1 in
  let (x2,y2) = p2 in
    sqrt (square (x2 -. x1) +.
            square (y2 -. y1))
;;

let tri_area (p1:point) (p2:point) (p3:point) : float =
  let a = distance p1 p2 in
  let b = distance p2 p3 in
  let c = distance p3 p1 in
  let s = 0.5 *. (a +. b +. c) in
    sqrt(s *. (s -. a) *. (s -. b) *. (s -. c))
;;

let rec poly_area (ps: point list) : float =
  match ps with
    | p1 :: p2 :: p3 :: tail -> tri_area p1 p2 p3 +. poly_area (p1::p3::tail)
    | _ -> 0.
;;

let area (s : shape) : float =
  match s with
    | Square s -> s *. s
    | Ellipse (r1, r2)-> 3.14 *. r1 *. r2
    | RtTriangle (s1, s2) -> s1 *. s2 /. 2.
    | Polygon ps-> poly_area ps
;;

area sq;;
area ell;;
area rt;;
area poly;;
