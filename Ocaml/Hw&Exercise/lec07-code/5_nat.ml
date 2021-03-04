type nat = Zero | Succ of nat;;

let rec nat_to_int (n : nat) : int=
  match n with
      Zero -> 0
    | Succ m -> 1 + nat_to_int m
;;

let a : nat = Zero;;
let b : nat = Succ (Succ (Succ Zero));; (* 3 *)
nat_to_int a;;
nat_to_int b;;



let rec double_nat (n : nat) : nat=
  match n with
    | Zero -> Zero
    | Succ m -> Succ (Succ (double_nat m))
;;

double_nat a;;
nat_to_int (double_nat a);;
double_nat b;; (* 6 *)
nat_to_int (double_nat b);;

