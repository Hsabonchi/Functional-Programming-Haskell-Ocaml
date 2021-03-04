(* map: list -> list
   -- operation: any operation you want
   -- type: int & float & string
*)


(* map GENERAL FORMAT *)
let rec map (f:'a -> 'b) (xs: 'a list) : 'b list =
  match xs with
    | [] -> []
    | hd::tl -> (f hd) :: (map f tl);;
;;

map (fun x -> x + 1) [1; 2; 3];;
map (fun x -> x *. 2.0) [1.5; 2.5; 3.5];;
map String.uppercase ["hello"; "world"];;
