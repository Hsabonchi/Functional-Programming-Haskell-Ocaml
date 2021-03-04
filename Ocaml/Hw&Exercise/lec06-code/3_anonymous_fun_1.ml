let square x = x*x;;
let add x y = x+y;;

let square_anon = (fun x -> x*x);;
let add_anon = (fun x y -> x+y);;

square 5;;
square_anon 5;;

add 2 3;;
add_anon 2 3;;

square_anon (add_anon 2 3);;

