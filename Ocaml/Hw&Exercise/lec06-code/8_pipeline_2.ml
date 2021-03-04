(********************)
(* Grade Processing *)
(********************)

type student = {first: string; last: string; assign: float list; final: float};;

let students : student list =
  [{first="Sarah"; last="Jones"; assign=[7.0;8.0;10.0;9.0];final=8.5};
   {first="Qian"; last="Xi"; assign=[7.3;8.1;3.1;9.0];final=6.5};
   {first="Naga"; last="Katta"; assign=[7.3;8.1;3.5;9.0];final=7.0}
  ]
;;


(* Create a function display that does the following:
 * for each student, print the following:
 * last name, first name: score
 *
 * where score is computed by averaging the assignments and giving the
 * assignment average 1/2 the weight of the final
 *
 * the students are sorted by score and displayed
*)

let compute_score {first=f; last=l; assign=grades; final=exam} =
  let sum x (num,tot) = (num+1,tot+.x) in
  let assign_total grades =List.fold_right sum grades (0,0.0) in  
  let assign_score (num,tot) = tot /. float_of_int num in
  let assign_avg = assign_score (assign_total grades) in
    (f, l, (assign_avg +. exam *. 2.0) /. 3.0)
;;

let student_compare (_,_,score1) (_,_,score2) =
  if score1 < score2 then 1
  else if score1 > score2 then -1
  else 0
;;

let stringify (first, last, score) = 
  last ^ ", " ^ first ^ ": " ^ string_of_float score;;

let display (ss : student list) : unit =
  ss |> List.map compute_score
  |> List.sort student_compare
  |> List.map stringify 
  |> List.iter print_endline
;;


display students;;
