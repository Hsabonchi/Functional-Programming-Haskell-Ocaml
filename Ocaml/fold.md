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

<pre>

let rec fold_left (f:'b -> 'a -> 'b) (base:'b) (xs:'a list) : 'b =
  match xs with
      [] -> base
    | hd::tail -> fold_left f (f base hd) tail
;;
  xs=[1;2;3;4]

    (* from left to right *)

    fold_left f   (f [] 1)    [2;3;4]
                     [1]

    fold_left f   (f [1] 2)    [3;4]
                    [2; 1] 

    fold_left f   (f [] 3)    [4]
                   [3; 1; 2] 

    fold_left f   (f [] 4)    []
                   4::[3; 1; 2]

    fold_left (fun x acc -> x::acc) xs []

</pre>
<pre>
(* 2e. write a function that maps f across a list and reverses the result *)
 let rec fold_left (f:'b -> 'a -> 'b) (base:'b) (xs:'a list) : 'b =
  match xs with
      [] -> base
    | hd::tail -> fold_left f (f base hd) tail
;;

let map_rev f xs = fold_left (fun acc x -> f x::acc) [] xs;;

map_rev (fun x ->(-x)) [1;2;3;9]=fold_left (fun acc x -> f x::acc) [] xs;;


fold_left f   (f [] f(1))    [2;3;9]
                [-1]
fold_left f   (f [1] (2))    [3;9]
                [-2; -1]  
fold_left f   (f [] f(3))    [9]
            [-3; -1; -2]              
fold_left f   (f [] f(9))    []
               -9::[-3; -1; -2]=[-9;-3; -1; -2]


</pre>
