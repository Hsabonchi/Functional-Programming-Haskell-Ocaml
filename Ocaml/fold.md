<pre>

let rec fold_right (f:'a -> 'b -> 'b) (xs:'a list) (base:'b) : 'b =
  match xs with
    [] -> base
    | hd::tail -> f hd (fold_right f tail base);;

(* from right to left *)

     f 1  (fold_right f [2;3;4] [])
  
    f 2  (fold_right f [3;4] [])
  
    f 3  (fold_right f [4] [])
    
    f 4  (fold_right f [] [])
    
    f  4 [] == 4:: []==[4]
    
    1::2::3:: [4] 
    
   fold_right (fun x acc -> x::acc  [1;2;3;4] [];;
  </pre>
