(*** CS5035 HW1: Easy as Pi ***)
(*** Amir Ebrahimi ***)

(* Submit your homework in Canvas.
 *
 * Make sure that your submission does NOT have
 * both compiling errors and running errors. *)


(* Don't remove the following line. *)
let undefined : unit -> 'a = fun () -> failwith "undefined";;




(* Problem 1. [10 POINTS] Please define these variables with the appropriate values.
 * Be sure that these statements all type-check after editing them.
 * You can do this by compiling with "ocamlc" in the terminal emulator. *)

(* 1.a. Create a string with your first name.
 * Your code should replace undefined (). *)
let first_name : string = "Amir";;

(* 1.b. [2 POINTS] Use a string operator on the string from 1.a. to create 
 * a string that contains both your first and last names.
 * Your code should replace undefined (). *)
let name : string = first_name ^ " Ebrahimi";;

(* 1.c. [2 POINTS] Create a string containing your email address.
 * Your code should replace undefined (). *)
let email : string = "irit.network@gmail.com";;

(* 1.d. [2 POINTS] Create an integer with your (estimated) graduate year.
 * Your code should replace undefined (). *)
let class_year : int = 2021;;

(* 1.e. [2 POINTS] Replace the ??? with what you're excited about in this course. *)
let exciting : string = "I'm excited about learning Functional Programming!";;

let print = Printf.sprintf;;

let survey () = 
  print "----------------------------------------\n" ^
    print "Name: %s\n" name ^
    print "Email: %s\n" email ^
    print "Year: %d\n" class_year ^
    print "%s\n" exciting ^
    print "----------------------------------------\n"
;;

print_endline (survey ());;




(* Problem 2. [20 POINTS] Fill in types:
 * Replace each ??? with the appropriate type of the corresponding expression.
 * Be sure to type check it before submission. 
 * Note that the expressions might not do anything useful -- and in fact 
 * might even display interesting problems! -- but all you should do is fill 
 * in the ???s to make them type check. *)

(* 2.a. [5 POINTS] *)
let prob2a : string  = let greet y = "Hello " ^ y in greet "World!";;

(* 2.b. [5 POINTS] *)
let prob2b : float = float_of_int (int_of_float(2.2 +. 7.7));;

(* 2.c. [5 POINTS] *)
let rec prob2c (x : char) : char =
  prob2c (if true then prob2c x else 'h')
;;

(* 2.d. [5 POINTS] *)
let rec prob2d (y:bool) (z:bool) : bool =
  prob2d (prob2d z y) (not y)
;;




(* Problem 3. [15 POINTS] Briefly explain why each of prob3{a,b,c} will not
 * compile (use the strings exp3{a,b,c} for your answers) and
 * change the code in some small way so that it does compile.
 *
 * Do NOT change the top-level type associated with the expression. *)

(* 3.a. [5 POINTS] Your code should replace undefined (). *)
let exp3a : string = "It's because 3.9 and 4 are not in the same type. 
In the other words, 3.9 is a float type where 4 in an int type. To fix this issue,
we'll have to change 4 to a float type, we should do this: 4.";;

let prob3a : bool = 
  let compare x y = x < y in 
    compare 3.9 4. 
;;

(* 3.b. [5 POINTS] Your code should replace undefined (). *)
let exp3b : string = "It's because of the nested functions in the function call of aux and we
nee to make them individual by parentheses.";;

let prob3b : int = 
  let fib (n) =
    let rec aux (n) (y) (x) =
      if n <= 0 then x 
      else aux (n-1) (x+y) y 
    in
      aux n 1 0
  in
    fib 10
;;

(* 3.c. [5 POINTS] Your code should replace undefined (). *)
let exp3c : string = "It's because the function 'sumTo' is a recursive function,
and it doesn't have 'rec' declaration. It has to be declared!";;

let prob3c : int =
  let rec sumTo (n:int) : int =
    if n <= 0 then 0
    else n + sumTo (n-1)
  in
    sumTo 10
;;




(* Problem 4. [15 POINTS] Solve the following sub-problems.*)

(* 4.a. [5 POINTS] Fill in the ??? with an expression that uses x and y
 * and has the right type. 
 *
 * Your answer could be ANY well-typed expression.*)
let prob4a =
  let u = 32.0 in 
  let v = 28.0 in
  let square w = w *. w in
  let boff (x) (y) = square x +. square y in
  let d = sqrt (boff u v) in
    int_of_float d
;;

(* Also:  What warning message do you get if your ??? expression does not
 * use the function "square"? *)
(* Your code should replace undefined (). *)

let warn4a : string = "unused variable square.";;


(* 4.b. [5 POINTS] Replace each ??? with the type of the corresponding expression,
 * and write a function f that has the correct type signature. Explain
 * in exp4b a problem that remains with the function prob4b.
 *
 * The function f could implement any functionality. *)
 let f (a:int) (b:int) : float  = float_of_int a +. float_of_int b;;
 
 let rec prob4b (x:float) (y:int) : int =
   prob4b (f y 4) (int_of_float x)
 ;;

(* Your code should replace undefined (). *)
let exp4b : string = "The problem is that the function prob4b doesn't 
exit for any given input.";;



(* 4.c. [5 POINTS] Is it possible to find types for the argument and result that
 * make the function forever type check?
 *
 * If possible, give correct types (replace ???), and comment
 * the let expression for exp4c.
 *
 * If not possible, explain why it is impossible in the string exp4c
 * (replace undefined ()), and comment the let expression for forever. *)
(*
let rec forever (x:???) : ??? =
  forever forever
;;
*)
let exp4c : string = "It's impossible because the function output type 
cannot be included in the input type. For this reason, I commented out the code above.";;


(* Problem 5. [10 POINTS] *)
(* Implement the function few_divisors, which takes two
 * parameters n and m, and should return true if n has
 * fewer than m divisors (including 1 and n), return
 * false otherwise.
 *
 * The few_divisors function should call the function
 * (bad_divisors n m) defined below  if n <= 0 or m < 0.
 *
 * Some examples are as follows.
   few_divisors 17 3;; (* true -- 17 has only 1 and 17 *)
   few_divisors 4 3;;  (* false -- 4 has 1, 4, and 2 *)
   few_divisors 4 4;;  (* true -- 4 has only 1, 4, and 2 *)
   few_divisors 18 6;; (* false -- 18 has 1, 18, 2, 3, 6, and 9 *)
   few_divisors 18 7;; (* true -- 18 has only 1, 18, 2, 3, 6, and 9 *)
*)

(* Don't remove these lines. Your code should replace undefined (). *)
exception BadDivisors of int * int;;
let bad_divisors n m = raise (BadDivisors (n,m));;

let few_divisors (n:int) (m:int) : bool =
  let rec checkDivisors (n : int) (currentIndex : int) : int =
    match currentIndex with 
      1 -> 1
      | _ -> if (n mod currentIndex) = 0 
        then checkDivisors (n) (currentIndex - 1) + 1 
        else checkDivisors (n) (currentIndex - 1)
    in
  if (checkDivisors n n) < m then true else false
;;

(* After the implementation, test your code with
 * following assertions.
 *
 * If your code passes all the following tests, it does NOT
 * mean that your implementation is COMPLETELY correct.
 *
 * You may figure out other test cases. *)
assert (few_divisors 17 3);;
assert (not (few_divisors 4 3));;
assert (few_divisors 4 4);;





(* Problem 6. [15 POINTS] Approximating Pi *)

exception BadArg of int;;
let bad_arg (n:int) = raise (BadArg n);;
(* COME BACK HERE AND SOLVE THIS PROBLEM -- AMIR'S COMMENT*)

(* 6.a. [5 POINTS] Sinusoidal Approximation *)
(* Use the following equations to define a function sin_pi that returns 
 * the ith approximation of pi.  

 * approx(0) = 3
 * approx(n+1) = approx(n) + sin(approx(n))

 * Using this approximation, you will converge on many digits of pi very
 * fast.  The first few digits of pi are 3.14159 26535 89793 23846 26433.  
 * approx(1) accurately predicts these digits:  3.141
 * approx(2) accurately predicts these digits:  3.14159 26535
 * approx(3) accurately predicts these digits:  3.14159 26535 89793
 * 
 * sin_pi should call the pre-defined function (bad_arg n)
 * if n is less than 0 *)

(* Your code should replace undefined (). *)
let sin_pi (n:int) : float =
  if n < 0 then bad_arg (string_of_int n)
  else
  let rec nthApprox (n : int) : float = 
    match n with 
    0 -> 3.
    | _ -> nthApprox (n-1) +. sin(nthApprox(n-1))
  in
  nthApprox n
;;

(* After the implementation, test your code with
 * following assertions.
 *
 * If your code passes all the following tests, it does NOT
 * mean that your implementation is COMPLETELY correct.
 *
 * You may figure out other test cases. *)
assert (sin_pi 0 = 3.0);;
assert (sin_pi 1 = 3.1411200080598674);;
assert (sin_pi 2 = 3.1415926535721956);;
assert (sin_pi 3 = 3.1415926535897931);;





(* 6.b. [10 POINTS] Monte Carlo Approximation *)
(* A Monte Carlo method relies on repeated random sampling to simulate
 * some process or compute a value.  See Wikipedia:
 * http://en.wikipedia.org/wiki/Monte_Carlo_method
 * 
 * Pi can be computed using Monte Carlo simulation through a series
 * of experiments.  Here is a single experiment:
 *
 *  -- choose a pair of random floating point numbers between 0 and 1
 *  -- call the numbers x and y 
 *  -- think of (x,y) as a point on the plane in the unit square
 *  -- test whether the point falls within the unit circle by measuring
 *     the distance from the point to the origin:  x^2 + y^2 <= 1
 *
 * Now suppose you do n experiments and in m of those experiments, the
 * random point chosen falls within the upper right quarter of the unit circle.
 * Since the area of a circle is known to be pi * r^2 and the area of
 * a square is r^2 (and here we are dealing with a radius/square side
 * of length 1), the following equations hold:

   m     quarter of area of circle     1/4 * pi * r^2
   --- = -------------------------  =  -------------- = 1/4 * pi
   n        area of square                r^2

 * Use the above information to write the function monte_pi, which 
 * takes a positive number indicating the number of random points n to
 * sample and approximates pi using that number of random points.
 * 
 * monte_pi should call the pre-defined function (bad_arg n)
 * when n is not positive.
*)

(*
* To compute some random numbers, use OCaml's Random library:
*
* http://caml.inria.fr/pub/docs/manual-ocaml/libref/Random.html
* 
* We initialize the library below.
*
* (Random.float f) will return a random floating point number between 0.0 and f.
*
* Note: this estimation method will converge far more slowly than the
* sinusoidal method (because the sin function already captures pi, so
* that approximation was really cheating!).  I only had the first 2 
* digits after 5000 trials.
* I estimated pi at 3.141628 after 1,000,000 trials (your result may
* vary depending on exact details of your computation).

* =======
* WARNING:
* =======
* If you make too many recursive calls in a row, you may run
* to a stack overflow error that looks like this:

* Stack overflow during evaluation (looping recursion)?

* Do not worry about that message -- just try your code on fewer trials.
* You don't necessarily have to be able to execute 1,000,000.  For example,
* if you code works on 100 or 1000 recursive calls, that is just fine.
*
* "Too many calls" may vary on different machines. Later in the semester
* we will discuss "tail recursion" and how to fix this problem.
*
*)

(* Don't remove these lines. Your code should replace undefined (). *)
Random.init 17;;

let monte_pi (n:int) : float =
  if n < 0 then bad_arg (string_of_int n)
  else
    let square m = m *. m in
    let rec count_successes (currentIndex : int) : int = 
      let (x, y) = (Random.float 1., Random.float 1.) in
      match currentIndex with 
        0 -> 0
      | _ -> if (square x +. square y <= 1.) 
        then (count_successes (currentIndex - 1) + 1) 
        else count_successes (currentIndex - 1)
    in 
  float_of_int (count_successes n) /. float_of_int (n) *. 4.
;;




(* Problem 7. [15 POINTS] *)
(* Look up another technique for approximating pi on the web.
 * As a starting point, see here:  
 *
 * http://en.wikipedia.org/wiki/Approximations_of_%CF%80
 *
 * You might be able to find other interesting articles on the web too.
 * 
 * The algorithm you choose must be capable of computing many digits of
 * pi.  Algorithms that compute just 1 approximation (such as 3 or
 * 3927/1250 or any other fixed fraction) are insufficient.  Choose 
 * an algorithm that successively approximates pi in some manner.  
 * Your algorithm may not use trigonometric functions such as sin, 
 * cos, arctan, etc.
 *
*)

(* 7.a. [5 POINTS] Briefly explain your algorithm and your sources in the string exp7a. *)
(* Your code should replace undefined (). *)
let exp7a : string = "Madhava of Sangamagrama approximation is the algorithm I use from Wikipedia. 
Based on the formla on Wikipedia:
PI = sqrt(12) * summation_Sigma_k_from_0_to_infinity ((-1 / 3) ^ -k) / (2k + 1).";;



(* 7.b. [10 POINTS] Implement your algorithm, i.e. the your_pi function.
 * 
 * your_pi should take a positive integer parameter n which
 * increases the precision of your approximation as it increases.
 *
 * your_pi should call the function (bad_arg n) defined in Problem 6
 * when n is not positive.
 * 
 * Explain what the parameter is used for in your algorithm
 * in the string exp7b. After the implementation, show some test cases.

 * Again, don't worry about stack overflow errors for large values
 * of the input to your_pi.
*)

(* Your code should replace undefined (). *)
let exp7b : string = "
This function uses the Madhava approximation (shown above) where
'i' represents the sum of the first i terms of the infinite sum detailed
in question 7a.

custom_pi testing:

Approximation  1 accurately predicts these digits:  3.
Approximation  5 accurately predicts these digits:  3.141
Approximation 10 accurately predicts these digits:  3.14159
Approximation 15 accurately predicts these digits:  3.14159 265
Approximation 20 accurately predicts these digits:  3.14159 26535
Approximation 25 accurately predicts these digits:  3.14159 26535 897
Approximation 30 accurately predicts these digits:  3.14159 26535 8979

)";;

let your_pi (n:int) : float =
  if n < 0 then bad_arg (string_of_int n)
  else
    let rec power (n : float) (k : int) : float = 
      match k with
      0 -> 1.
      | _ -> n *. (power n (k-1)) 
    in
    let rec nthApprox (i : int) : float = 
      match i with 
      0 -> 1.
      | _ -> (power (-1. /. 3.) i) /. ((2. *. float_of_int i) +. 1.) +. nthApprox (i-1)
    in
    sqrt(12.) *. nthApprox i
;;

(* After the implementation, figure out at least three test cases
 * excluding non-positive arguments. *)
(* Your code should replace ??? *)
assert (your_pi 1 = 3);;
assert (your_pi 5 = 3.141);;
assert (your_pi 10 = 3.14159);;
(* MORE TEST CASES *)


