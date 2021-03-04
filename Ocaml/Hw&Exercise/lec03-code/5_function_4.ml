let munge (b:bool) (x:int) : string = 
  if not b then
    string_of_int x
  else
    "hello";
;;
let f (s:string) : int =
  0
;;
let g (m:bool->int->string) : int =
  0
;;
let y = 17;;
munge (y > 17);;
munge true (f (munge false 3));;
munge true (g munge);;
munge (y > 17) y;;


