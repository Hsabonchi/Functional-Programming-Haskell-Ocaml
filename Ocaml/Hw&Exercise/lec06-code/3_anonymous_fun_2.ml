let add_anon = (fun x y -> x+y);;

let add_anon_2 = (fun x -> (fun y -> x+y));;


add_anon 2 3;;
add_anon_2 2 3;;
