(* Tricky syntax of if and parens *)

(* Why does this loop forever? *)
let rec forever (n:int) : unit =
  if n <= 0 then
    print_endline "done"
  else
    print_endline "next";
    forever (n-1)

(* This code does not loop forever *)
let rec terminates (n:int) : unit =
  if n <= 0 then
    print_endline "done"
  else (
    print_endline "next";
    terminates (n-1)
  )

let _ =
  terminates 10
