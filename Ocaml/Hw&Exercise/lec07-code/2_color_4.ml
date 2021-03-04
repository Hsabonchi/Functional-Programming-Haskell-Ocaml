type color = Red | Green | Blue;;

let print_color (c:color) : unit =
  match c with
    | Red -> print_string "red\n"
    | Green -> print_string "green\n"
    (* | Blue ->  print_string "blue\n" *)
;;


let c1 = Red;;
let c2 = Blue;;

print_color c1;;
print_color c2;;


