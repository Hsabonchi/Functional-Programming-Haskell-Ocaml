<pre>

let rec rmk (k:int) (l:'a list) : 'a list = match l with
    | [] -> []
    | h :: t -> if k = 0 then t else h :: (rmk (k-1) t);;
         
rmk 1 ["a";"b";"c";"d"];;

k=3
"a" (rmk (2) ["b";"c";"d"]
"b" (rmk (1) ["c";"d"])
"c" (rmk (0) ["d"] ===> []
"a" ::"b" ::"c" :: [] ===>  ["a";"b";"c"];;


k=1
"a" (rmk (0) ["b";"c";"d"]
"a":: ["c";"d"]  =["a";"c";"d"];;

k=2
"a" (rmk (1) ["b";"c";"d"])
"b" (rmk (0) ["c";"d"])

"a"::"b"::["d"] =["a";"b";"d"];;

</pre>
<br>

let rec final (l: 'a list) : 'a option = 
		match l with 
		[]->None
		|[x]->Some x
		|_::t->final t
	;;
1-final["a"; "c"; "d"]
2-final["c"; "d"]
3-final["d"]

<br>
