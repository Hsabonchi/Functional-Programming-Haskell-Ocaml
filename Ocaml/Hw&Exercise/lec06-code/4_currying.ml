let add = (fun x -> (fun y -> x+y));;

let inc = add 1;;

let inc_2 = (fun y -> 1+y);;
let inc_3 y = 1+y;;


inc 3;;
inc_2 3;;
inc_3 3;;



let inc2 = add 2;;
let inc3 = add 3;;
inc2 3;;
inc3 3;;

