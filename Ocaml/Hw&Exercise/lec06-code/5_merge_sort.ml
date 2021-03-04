(* split xs into two even parts: ys and zs *)
let rec split (xs:'a list) (ys:'a list) (zs: 'a list) : 'a list * 'a list =
  match xs with
    | [] -> (ys, zs)
    | hd::tail -> split tail zs (hd::ys)
;;

(* merge lists xs and ys *)
(* two empty lists merge into an empty list *)
(* an empty list merges with a non-empty list yielding the latter, unchanged *)
(* two non-empty lists compare first elements, and prepend the smaller
 * of the two to the result of the recursive merge *)
 let rec merge (cmp:'a->'a->bool) (xs:'a list) (ys:'a list) : 'a list =
  match (xs,ys) with
    | ([],_) -> ys
    | (_,[]) -> xs
    | (x::xst, y::yst) ->
        if cmp x y then x::(merge cmp xst ys)
        else y::(merge cmp xs yst)
;;

(* Sort original list os using function cmp *)
(* an empty list is already sorted *)
(* a one-element list is already sorted *)
(* a multi-element list should be split
 * and recursively sorted, then merged *)
 let rec mergesort (cmp:'a->'a->bool) (os:'a list) : 'a list  =
 match os with
   | ([] | _::[]) -> os
   | _ -> let (first,second) = split os [] [] in
         merge cmp (mergesort cmp first) (mergesort cmp second)
;;




mergesort (<) [3;2;7;1];;
mergesort (>) [3;2;7;1];;
mergesort (fun x y -> String.compare x y < 0) ["Hi"; "Bi"];;
mergesort (fun x y -> String.compare x y > 0) ["Hi"; "Bi"];;




let int_sort = mergesort(<);;
let int_sort_down = mergesort(>);;
let str_sort = mergesort(fun x y -> String.compare x y < 0);;

int_sort [3;2;7;1];;
int_sort_down [3;2;7;1];;
str_sort ["Hi"; "Bi"];;
