let add x y = x + y;;
let square x = x * x;;

let comp f g x = f (g x);;
let mystery_a = comp (add 1) square;;

let mystery_b x = add 1 (square x);;


assert (mystery_a 5 = mystery_b 5);;

