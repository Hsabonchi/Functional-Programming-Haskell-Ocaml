(* map: list -> list
   -- operation: inc_all & square_all
   -- type: int
*)

let rec inc_all (xs : int list) : int list =
  match xs with
    | [] -> []
    | hd :: tl -> (hd+1) :: (inc_all tl)
;;

let rec square_all (xs : int list) : int list =
  match xs with
    | [] -> []
    | hd :: tl -> (hd*hd) :: (square_all tl)
;;

let xs = [1;2;3];;
inc_all xs;;
square_all xs;;




let rec map (f:int->int) (xs : int list) : int list =
  match xs with
    | [] -> []
    | hd :: tl -> (f hd) :: (map f tl)
;;

let inc x = x+1;;
let inc_all_a xs = map inc xs;;

let square x = x*x;;
let square_all_a xs = map square xs;;

inc_all_a xs;;
square_all_a xs;;




let inc_all_b xs = map (fun x -> x+1) xs;;

let square_all_b xs = map (fun x -> x*x) xs;;

inc_all_b xs;;
square_all_b xs;;


