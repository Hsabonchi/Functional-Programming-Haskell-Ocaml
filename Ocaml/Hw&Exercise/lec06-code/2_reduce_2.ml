(* reduce: list -> value
   -- operation: length
   -- type: int & float & string
*)

(* reduce GENERAL FORMAT *)
let rec reduce (f:'a->'b->'b) (base:'b) (xs : 'a list) : 'b =
  match xs with
    | [] -> base
    | hd :: tl -> f hd (reduce f base tl)
;;


let length (lst: 'a list) : 'b =
  reduce (fun x y -> y+1) 0 lst;;
(* let length (lst: 'a list) : int =
   reduce (fun x y -> y+1) 0 lst;; *)



let xs1 = [1;2;3;4];;
let xs2 = [];;
let xs3 = [1.5;2.5;3.5];;
let xs4 = ["a";"b";"c";"d";"e"];;

length xs1;;
length xs2;;
length xs3;;
length xs4;;




let copy lst = reduce (fun x y -> x::y) [] lst;;
copy xs1;;
copy xs2;;
copy xs3;;
copy xs4;;




let map_b g xs = reduce (fun a b -> (g a)::b) [] xs;;

let rec map_a (f:'a -> 'b) (xs: 'a list) : 'b list =
  match xs with
    | [] -> []
    | hd::tl -> (f hd) :: (map f tl);;
;;

let inc_all_a xs = map_a (fun x -> x+1) xs;;
let square_all_a xs = map_a (fun x -> x*x) xs;;

let inc_all_b xs = map_b (fun x -> x+1) xs;;
let square_all_b xs = map_b (fun x -> x*x) xs;;

let xs = [1;2;3];;
assert (inc_all_a xs = inc_all_b xs);;
assert (square_all_a xs = square_all_b xs);;
