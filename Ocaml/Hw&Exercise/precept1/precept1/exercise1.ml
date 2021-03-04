(*
   These exercises are suggested for programming practice and 
   acclimation to "thinking functionally": just as you may 
   have heard in 126 that the way to get better at programming 
   is to program, the way to get better at programming in the 
   functional paradigm is to program in the functional paradigm!

   These exercises can be checked on TigerFile just like the 
   assignments, but are not required, and thus have no due date.
*)

(* 1a. Make it so that that x equals 42, by adding 22 to 20 *)
(* 
let x = 
*) 

(* 1b. Make it so that x1 equals 42.0, by casting x. *)
(* 
let x1 = (* Your code here. *)  
*)


(* 1c. Write a function takes a string, and appends
 * ", and that is why I love cos326" to the end of it. *)
(* 
let cos326_loveifier (arg:string)  = (* Your code here *) 
*)


(* call your loveifier, creating the mylove string -- yes, this is cheesy!: *)
(*
let mylove:string = ...
*)


(* 1d. Write a function that takes a number and returns
 * the difference between that number and 42.
 * Eg, if 'num' is 50, the result should be 8.
 * If 'num' is 30, the result should be -12 *)
(* 
let diff_42 num = (* Your code here *) 
*)


(* 1e. One more simple arithmetic example...
 * Write a function that returns the volume of a cylinder
 * with radius r, height h. (volume is pi * r^2 * h) *)
(* 
let pi = 4.0 *. atan 1.0
let volume_cylinder (r:float) (h:float) : float = (* Your code here *) 
*)


(* 1f. Determine if an integer is even. *)
(* 
let even (x: int) : bool = (* Your code here *)   
*)


(* 1g. Write odd in terms of even *)
(* 
let odd (x: int) : bool = (* Your code here *)  
*)


(* 1h. OCaml comes pre-packaged with a standard library, that includes
 * a lot of utility functions that you don't have to write yourself.
 * For instance, check out the String module
 * (http://caml.inria.fr/pub/docs/manual-ocaml/libref/String.html)
 *
 * Now... write a function that takes a String, and returns whether
 * or not that String is more than 10 characters long. *)

(* 
let gt_10_chars str : bool = (* Your code here. *) 
*)


(* 2. What does the following expression evaluate to? Why?*)
(* let why = 1.0 == 1.0 *)
(* let because = ""  *)

(* Moral of the story : Don't use == unless you really know what
 * you're doing
 *)


(* 3. Compute the GCD for two integers using Euclid's recursion
 * https://en.wikipedia.org/wiki/Euclidean_algorithm *)

(* 
let gcd (x : int) (y : int) : int = 
*)



(* 4. Compute the McCarthy 91 function as shown in 
 * http://en.wikipedia.org/wiki/McCarthy_91_function
 *)

(* 
let mccarthy (x : int) : int = 
*)




(* 5. Compute the square root of x using Heron of Alexandria's
 * algorithm (circa 100 AD).  x must be greater than 1.0.

 * We start with an initial (poor) guess that the square root is 1.0.
 * Let's call our current guess g.  We'll maintain the invariant that
 * g^2 is less than x and therefore that g is less than the square root
 * of x.

 * Notice that if g is less than the square root of x then x/g is slightly
 * greater than the square root of x.  The real square root is then between
 * g and x/g.

 * To compute a slightly better guess than g, we can take the average of
 * g and x/g:

     g + x/g
     -------
        2

 * We can keep improving our guess by averaging again and again.  Stop
 * the process when you get pretty close.  For this function, when the
 * difference between g and x/g is less than 0.001, compute one final
 * average and return it

 *  More on this method here:

 * http://www.mathpages.com/home/kmath190.htm

 * More on Heron of Alexandria here:

 * http://en.wikipedia.org/wiki/Hero_of_Alexandria
*)

(* 
let squareRoot (x : float) : float =
*)

