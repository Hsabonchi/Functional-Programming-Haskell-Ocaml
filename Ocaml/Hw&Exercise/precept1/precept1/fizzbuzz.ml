(*  FizzBuzz Program:  Specification modified from:

http://fsharpforfunandprofit.com/posts/railway-oriented-programming-carbonated/

Write a program that prints the numbers from 0 to 100, one per line.
As a first step, you can write a function that returns the whole string
that will be printed, and then the program can print everything at once.
* For multiples of three, put "Fizz" instead of the number,
  and compute the rest of the string.
* For multiples of five, put "Buzz" and continue.
* For numbers which are multiples of both three and five,
  put "FizzBuzz" and continue.
*)

(*
  Useful notes:

  You can write \n to denote a newline character.
  If you print the string "hello\nworld",
  you will get hello and world on separate lines.

  e1 mod e2   -- mod operation returns an integer

  e1 = e2     -- equality operation tests equality of two values

  e1 ^ e2     -- concatenates two strings

  string_of_int e  -- takes an int and gives back the string containing the int

  let rec f (x:t) :t = ...    -- remember the "rec" keyword when defining a
                                 recursive function
*)

(*
 at your prompt ($), run the interactive real-eval-print-loop
 using the following (don't type "$"):

   $ ocaml

   then you will see the read-eval-print-loop running:

   #

   You can enter the following to load the file (don't type the first "#")

   # #use "fizzbuzz.ml";;

   Then you will have the definitions in your file available
   in the real-eval-print-loop.
   This gives you an easy way to experiment with them.
   If you have any errors in the file, they will also show up here.

*)

(* If you want to compile the file to an executable, however, follow this:

   at your prompt ($), compile this file using the following (don't type "$"):

   $ ocamlbuild fizzbuzz.d.byte

   execute the file by next typing

   $ ./fizzbuzz.d.byte

   you can clean up your build, so that all that is left is the
   fizzbuzz.ml source file using the following, reminiscent of
   Makefiles:

   $ ocamlbuild -clean
*)

(* Change below *)

let fizzbuzz _ = ""

(* You don't have to change anything below, we have not learned that yet *)

let main : unit = print_endline (fizzbuzz 0)
