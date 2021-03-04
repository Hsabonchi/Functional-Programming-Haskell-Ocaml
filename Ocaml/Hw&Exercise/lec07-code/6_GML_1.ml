type markup = Ital | Bold | Font of string;;
type elt=
      Words of string list
    | Formatted of markup * elt
;;
type doc = elt list;;


let d = [
  Formatted (Bold,
             Formatted (Font "Arial", Words ["Chapter"; "One"]));

  Words ["It"; "was"; "a"; "dark"; "&"; "stormy"; "night."; "A"];

  Formatted (Ital, Words ["shot"]);

  Words ["rang"; "out."]
];;


(* Change all of the “Arial” fonts in a document to “Courier”. *)
let chmarkup (m:markup) : markup =
  match m with
    | Font "Arial" -> Font "Courier"
    | _ -> m
;;

let rec chfont (e:elt) : elt =
  match e with
    | Words ws-> Words ws
    | Formatted (m,e) -> Formatted (chmarkup m, chfont e)
;;

let rec chfonts (elts:doc) : doc =
  match elts with
    | [] -> []
    | hd::tl-> (chfont hd)::(chfonts tl)
;;

chfonts d;;
