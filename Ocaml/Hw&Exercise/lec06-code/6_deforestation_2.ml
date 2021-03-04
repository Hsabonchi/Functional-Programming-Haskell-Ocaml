let rec map (f:'a -> 'b) (xs: 'a list) : 'b list =
  match xs with
    | [] -> []
    | hd::tl -> (f hd) :: (map f tl);;
;;
let comp f g x = f (g x);;

let f x = x + 1;;
let g x = x * 2;;


let a xs = map f (map g xs);;
let b xs = map (comp f g) xs;;


let xs = [1;2;3;4;5];;
assert (a xs = b xs);;

