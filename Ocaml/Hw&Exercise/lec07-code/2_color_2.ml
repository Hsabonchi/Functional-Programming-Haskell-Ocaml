type color = Red | Green | Blue;;
type my_color = Red | Black;;


let c1 = Red;;
let c2 = Blue;;

let c3 : color = Red;;
let c4 : my_color = Red;;

c1 = c4;;
c2 = c3;;
c3 = c4;;
