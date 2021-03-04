let mult (x) (y) = 
  Printf.printf "%d * %d\n" x y ;
  x * y
;;

let rec fold_left (f:'b -> 'a -> 'b) (base:'b) (xs:'a list) : 'b =
  match xs with
      [] -> base
    | hd::tail -> fold_left f (f base hd) tail
;;

let rec fold_right (f:'a -> 'b -> 'b) (xs:'a list) (base:'b) : 'b =
  match xs with
      [] -> base
    | hd::tail -> f hd (fold_right f tail base)
;;

(* what is the product of all the numbers in the list? *)
let leftprod = fold_left mult 1 [1 ; 2; 3; 4; 5];;
let rightprod = fold_right mult [1 ; 2; 3; 4; 5] 1;;

let rec map (f:'a -> 'b) (xs: 'a list) : 'b list =
  match xs with
    | [] -> []
    | hd::tl -> (f hd) :: (map f tl)
;;

(* what is the value x^2 - 4x + 9 for each value in the list? *)
let algebra (x:int) : int =
  x*x - 4*x + 9
;;

let algmap = map algebra [-2; -1; 0; 1; 2];;

(* what is the transformation of each item in the list to letter? *)
let letter_index (x:int) : char =
  Char.chr((Char.code 'a') + (x-1)) (* x - 1 because 'a' is 1st letter *)
;;

let l = map letter_index [15; 3; 1; 13; 12];; (* ['o';'c';'a';'m';'l'] *)
let stringL = fold_left (fun s c -> s ^ Char.escaped c) "" l;; (* "ocaml" *)
let stringR = fold_right (fun c s -> Char.escaped c ^ s) l "";; (* "ocaml" *)



let print_int_list (xs : int list) : unit =
  List.iter (fun x -> print_int x; print_string ", ") xs
;;

print_int_list [1 ; 2; 3; 4; 5];;
