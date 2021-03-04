(* reduce: list -> value
   -- operation: sum & prod
   -- type: int
*)



let rec sum (xs : int list) : int =
  match xs with
    | [] -> 0
    | hd :: tl -> hd + (sum tl)
;;

let rec prod (xs : int list) : int =
  match xs with
    | [] -> 1
    | hd :: tl -> hd * (prod tl)
;;

let xs = [1;2;3;4];;
sum xs;;
prod xs;;




(* Create a function called reduce that
   when suppiled with a couple of arguments
   can implement both sum and prod *)
let rec reduce (f:int -> int -> int) (base:int) (xs:int list) =
  match xs with
      [] -> base
    | hd::tail -> f hd (reduce f base tail)
;;

let add x y = x + y;;
let mul x y = x * y;;

let sum_a xs = reduce add 0 xs;;
let prod_a xs = reduce mul 1 xs;;

sum_a xs;;
prod_a xs;;




let sum_b xs = reduce (fun x y -> x+y) 0 xs;;
let prod_b xs = reduce (fun x y -> x*y) 1 xs;;

sum_b xs;;
prod_b xs;;




let sum_c xs = reduce (+) 0 xs;;
let prod_c xs = reduce ( * ) 1 xs;;

sum_c xs;;
prod_c xs;;




(* use map and reduce together to find the sum of
   the squares of the elements of a list *)
let rec map (f:'a -> 'b) (xs: 'a list) : 'b list =
  match xs with
    | [] -> []
    | hd::tl -> (f hd) :: (map f tl);;
;;

let sum_of_squares xs = reduce (fun x y -> x+y) 0 (map (fun x -> x*x) xs);;
sum_of_squares xs;;



let pairify xs = map (fun x -> (x,x)) xs;;
pairify xs;;
