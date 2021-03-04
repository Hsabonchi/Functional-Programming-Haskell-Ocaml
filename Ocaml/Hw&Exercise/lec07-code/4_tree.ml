type key = int;;
type value = string;;
type tree =
      Leaf
    | Node of key * value * tree * tree
;;

let rec insert (t:tree) ((k,v):key*value) : tree =
  match t with
    | Leaf -> Node (k, v, Leaf, Leaf)
    | Node (k', v', left, right) ->
        if k < k' then
          Node (k', v', insert left (k,v), right)
        else if k > k' then
          Node (k', v', left, insert right (k,v))
        else
          Node (k, v, left, right)
;;

let construct ls = List.fold_left insert (Leaf) ls;;



let t = construct [(3,"Functional"); (2,"CS"); (4,"programming"); (5,"World"); (1,"Hello")];;




