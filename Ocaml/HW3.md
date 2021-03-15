<pre>
(* Write a function that flattens a list of lists in to a single
 * list with all of the elements in the same order they appeared in 
 * the original list of lists. eg:
 *
 * flatten [[1;2;3]; []; [4]; [5;6]] = [1;2;3;4;5;6] 
 * flatten [[]; ['e';'d']; ['a';'b';'c']] = ['e';'d';'a';'b';'c'] 
*)
   
    :: is very fast; @ is slower—O(n)
    
    let rec flatten2 (xss:'a list list) : 'a list =
     match xss with 
     [] -> []
     | (hd::tl) -> hd @ flatten tl
    ;;

</pre>
