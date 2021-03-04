(*** CS5035 HW2 Part 2: Box Office Analysis in OCaml [75 POINTS] ***)

(* Contents:
   -- the movie type
   -- the studio_gross type
   -- functions for querying and transforming lists of movies
*)

(* a movie is a tuple of (title, studio, gross in millions, year) *)
type movie = string * string * float * int;;

(* a studio_gross is a pair of (studio, gross in millions) *)
type studio_gross = string * float;;

(* call bad_argument if your function receives a bad argument *)
(* do not change this exception or function                   *)
exception Bad_arg of string;;
let bad_arg (s:string) = raise (Bad_arg s);;

(* a useful debugging routine *)
let debug s = print_string s; flush_all();;

let unimplemented (s:string) : 'a = failwith (s^" unimplemented");;

(* *** DO NOT CHANGE DEFINITIONS ABOVE THIS LINE! *** *)

(* you may add "rec" after any of the let declarations below that you
 * wish if you find doing so useful. *)


(* find the average gross of the movies in the list                  *)
(* return 0.0 if the list is empty                                   *)
(* hint: you may need to use functions float_of_int and int_of_float *)
(* hint: if you don't know what those functions do,                  *)
(*       type them in to ocaml toplevel                              *)
(* hint: recall the difference between +. and + also 0. and 0        *)
(* [5 POINTS] *)
let average (movies : movie list) : float = 
  unimplemented "average"
;;

(* return a list containing only the movies from the given decade *)
(* call bad_arg if n is not 20, 30, ..., 90, 00, 10               *)
(* Treat 0 as 00 (this is unavoidable as 00 is not represented    *)
(*   differently from 0).                                         *)
(* Note: movies from any years outside the range 1920-2019 will   *)
(* always be discarded but should not raise an error condition    *)
(* [5 POINTS] *)
let decade (n:int) (ms:movie list) : movie list =  
  unimplemented "decade"
;;


(* return the first n items from the list *)
(* if there are fewer than n items, return all of them *)
(* call bad_arg if n is negative *)
(* [5 POINTS] *)
let take (n:int) (l:'a list)  : 'a list =
  unimplemented "take"
;;


(* return everything but the first n items from the list *)
(* if there are fewer than n items, return the empty list *)
(* call bad_arg if n is negative *)
(* [5 POINTS] *)
let drop (n:int) (l:'a list)  : 'a list =
  unimplemented "drop"
;;


(* Implement the selection sort algorithm.

   return a list [x1; x2; ...; xn] with the same elements as the input l
   and where:
   leq xn xn-1
   ...
   leq x3 x2
   leq x2 x1
   are all true
*)
(* hint: define an auxiliary function "select" *)
(* hint: select probably should return a pair.  Of what?  Think functionally. *)
(* [15 POINTS] *)
type 'a less = 'a -> 'a -> bool;;
let selection_sort (leq:'a less) (l:'a list) : 'a list =
  unimplemented "selection_sort"
;;

(* ASIDE:  Why does this assignment ask you to implement selection sort?
   Insertion sort is almost always preferable to selection sort,
   if you have to implement a quadratic-time sorting algorithm.
   Insertion sort is faster, it's simpler to implement, and it's
   easier to reason about.  For smallish inputs (less than 5 or 8),
   insertion sort is typically faster than quicksort or any
   other NlogN sorting algorithm.  So, why do we ask you to implement
   selection sort?  Answer: we already showed you insertion sort
   in the lecture notes.

   ASIDE 2: But at least selection sort is better than bubble sort.
   Even Barack Obama knows that. https://www.youtube.com/watch?v=k4RRi_ntQc8
*)


(* return list of movies sorted by gross (largest gross first) *)
(* [10 POINTS] *)
let sort_by_gross (movies : movie list) : movie list = 
  unimplemented "sort_by_gross"
;;


(* return list of movies sorted by year produced (largest year first) *)
(* [10 POINTS] *)
let sort_by_year (movies : movie list) : movie list = 
  unimplemented "sort_by_year"
;;


(* sort list of (studio, gross in millions) by gross in millions 
 * with the largest gross first *)
(* [10 POINTS] *)
let sort_by_studio (studio_grosses : studio_gross list) : studio_gross list = 
  unimplemented "sort_by_studio"
;;


(* given list of movies,
 * return list of pairs (studio_name, total gross revenue for that studio)  *)
(* [10 POINTS] *)
let by_studio (movies:movie list) : studio_gross list =
  unimplemented "by_studio"
;;




(***********)
(* Testing *)
(***********)

(* Augment the testing infrastructure below as you see fit *)

(* Test Data *)

let data1 : movie list = [
  ("The Lord of the Rings: The Return of the King","NL",377.85,2003)
];;

let data2 : movie list = [
  ("The Lord of the Rings: The Return of the King","NL",377.85,2003);
  ("The Hunger Games","LGF",374.32,2012)
];;

let data3 : movie list = [
  ("Harry Potter and the Sorcerer's Stone","WB",317.57555,2001);
  ("Star Wars: Episode II - Attack of the Clones","Fox",310.67674,2002);
  ("Return of the Jedi", "Fox", 309.306177, 1983)
];;

let data4 : movie list = [
  ("The Lord of the Rings: The Return of the King","NL",377.85,2003);
  ("The Hunger Games","LGF",374.32,2012);
  ("The Dark Knight","WB",533.34,2008);
  ("Harry Potter and the Deathly Hallows Part 2","WB",381.01,2011)
];;


(* Assertion Testing *)
assert (take 0 data4 = []);;
assert (take 1 data1 = data1);;
assert (take 2 data4 = data2);;
assert (take 5 data2 = data2);;
assert (take 2 data2 = data2);;

assert (drop 4 data4 = []);;
assert (drop 5 data4 = []);;
let data5 : movie list = [
  ("The Dark Knight","WB",533.34,2008);
  ("Harry Potter and the Deathly Hallows Part 2","WB",381.01,2011)
];;
assert (drop 2 data4 = data5);;

assert (average [] = 0.0);;
assert (average data1 = 377.85);;
assert (average data4 = 416.63);;

assert (decade 0 data2 = data1);;
assert (decade 10 data2 = [("The Hunger Games","LGF",374.32,2012)]);;
assert (decade 80 data3 = [("Return of the Jedi", "Fox", 309.306177, 1983)]);;
let data6 : movie list = [
  ("The Lord of the Rings: The Return of the King","NL",377.85,1903);
  ("The Hunger Games","LGF",374.32,2012);
  ("The Dark Knight","WB",533.34,2008);
  ("Harry Potter and the Deathly Hallows Part 2","WB",381.01,1911)
];;
assert (decade 0 data6 = [("The Dark Knight","WB",533.34,2008)]);;
assert (decade 10 data6 = [("The Hunger Games","LGF",374.32,2012)]);;

assert (selection_sort (fun a b -> a>b) [1;4;3;5;2;3] = [1;2;3;3;4;5]);;
assert (selection_sort (fun a b -> a<b) [1;4;3;5;2;3] = [5;4;3;3;2;1]);;
assert (selection_sort (fun a b -> a>b) [] = []);;
assert (selection_sort (fun a b -> a<b) [] = []);;




(* Additional Testing Infrastructure *)
let check (i:int) (tests:(unit -> 'a) list) : 'a =
  if i < List.length tests && i >= 0 then
    List.nth tests i ()
  else
    failwith ("bad test" ^ string_of_int i)
;;


let tests_sort_by_gross : (unit -> movie list) list = [
  (fun () -> sort_by_gross data1);
  (fun () -> sort_by_gross data2);
  (fun () -> sort_by_gross data3);
  (fun () -> sort_by_gross data4)
];;
check 0 tests_sort_by_gross;;
check 1 tests_sort_by_gross;;
check 2 tests_sort_by_gross;;
check 3 tests_sort_by_gross;;


let tests_sort_by_year : (unit -> movie list) list = [
  (fun () -> sort_by_year data1);
  (fun () -> sort_by_year data2);
  (fun () -> sort_by_year data3);
  (fun () -> sort_by_year data4)
];;
check 0 tests_sort_by_year;;
check 1 tests_sort_by_year;;
check 2 tests_sort_by_year;;
check 3 tests_sort_by_year;;


let data7 : movie list = [
  ("Harry Potter and the Sorcerer's Stone","WB",317.57555,2001);
  ("Star Wars: Episode II - Attack of the Clones","Fox",310.67674,2002);
  ("Return of the Jedi", "Fox", 309.306177, 1983);
  ("The Lord of the Rings: The Return of the King","NL",377.85,2003);
  ("The Hunger Games","LGF",374.32,2012);
  ("The Dark Knight","WB",533.34,2008);
  ("Harry Potter and the Deathly Hallows Part 2","WB",381.01,2011)
];;
let tests_by_studio : (unit -> studio_gross list) list = [
  (fun () -> by_studio data3);
  (fun () -> by_studio data4);
  (fun () -> by_studio data7)
];;
let studiodata1 = check 0 tests_by_studio;;
let studiodata2 = check 1 tests_by_studio;;
let studiodata3 = check 2 tests_by_studio;;


let tests_sort_by_studio : (unit -> studio_gross list) list = [
  (fun () -> sort_by_studio studiodata1);
  (fun () -> sort_by_studio studiodata2);
  (fun () -> sort_by_studio studiodata3)
];;
check 0 tests_sort_by_studio;;
check 1 tests_sort_by_studio;;
check 2 tests_sort_by_studio;;
