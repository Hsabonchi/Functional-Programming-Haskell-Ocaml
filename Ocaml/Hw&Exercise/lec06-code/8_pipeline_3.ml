(************************)
(* The Pair Combinators *)
(************************)

let both   f (x,y) = (f x, f y);;
let do_fst f (x,y) = (f x,   y);;
let do_snd f (x,y) = (  x, f y);;

(**************************)
(* Pipelines:  An Example *)
(**************************)

let even x = (x/2)*2 == x;;

let process (p : float * float) =
  p |> both int_of_float    (* convert to float *)
  |> do_fst (fun x -> x/3)  (* divide fst by 3  *)
  |> do_snd (fun y -> y/2)  (* divide snd by 2  *)
  |> both even		  (* test for even    *)
  |> fun (x,y) -> x && y	  (* both even	      *)
;;

process (6.2, 5.5);;

process (9.0, 5.5);;
