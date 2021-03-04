(***********************)
(* The Pipe Combinator *)
(***********************)

let (|>) x f = f x ;;

let twice f x = x |> f |> f;;




let square x = x*x;;

let fourth x = twice square x;;

fourth 2;;




let compute x =
  x |> square
  |> fourth
  |> ( * ) 3
  |> print_int
  |> print_newline;;

compute 2;;
