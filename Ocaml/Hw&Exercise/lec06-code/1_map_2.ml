(* map: list -> list
   -- operation: inc_all
   -- type: int & float
*)


(* map GENERAL FORMAT *)
let rec map (f:'a -> 'b) (xs: 'a list) : 'b list =
  match xs with
    | [] -> []
    | hd::tl -> (f hd) :: (map f tl);;
;;

let inc_all_int xs = map (fun x -> x + 1) xs;;
let inc_all_float xs = map (fun x -> x +. 1.0) xs;;

let xs = [1;2;3];;
inc_all_int xs;;

let ys = [1.5;2.5;3.5];;
inc_all_float ys;;

