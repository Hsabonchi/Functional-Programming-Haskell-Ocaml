(*
  a simple conversion of an optimization word
  problem into OCaml code, used to demonstrate
  basic functions, types, and testing.

  Adapted from Steve Zdancewic's CIS120 at UPenn
*)

(*
Problem statement:

Imagine that you own a movie theater. The more you charge, the fewer
people can afford tickets. In a recent experiment you determined a
relationship between the price of a ticket and average attendance. At a
price of $5.00 per ticket, 120 people attend a performance. Decreasing
the price by a dime ($.10) increases attendance by 15.  However,
increased attendance also comes at increased cost; each attendee costs
four cents ($0.04). Every performance also has a base cost of $180. At
what price do you make the highest profit?

Note: all prices below are in cents
*)

(* predictive attendance function based on experiment *)
let attendees (price:int) : int =
  (-15 * price) / 10 + 870

(* test that the attendance function works for the given cases *)
let test500 () : bool =
  (attendees 500) = 120
let _ = assert (test500 ())

let test490 () : bool =
  (attendees 490) = 135
let _ = assert (test490 ())

(* revenue = price * attendees *)
let revenue (price:int) : int =
  price * (attendees price)

let cost (atts:int) : int =
  18000 + 4 * (attendees atts)

(* profit = revenue - cost *)
let profit (price:int) : int =
  (revenue price) - (cost price)

let profit500 : int =
  let price = 500 in
  let attendees = 120 in
  let revenue = price * attendees in
  let cost = 18000 + 4 * attendees in
  revenue - cost

let profit490 : int =
  let price = 490 in
  let attendees = 135 in
  let revenue = price * attendees in
  let cost = 18000 + 4 * attendees in
  revenue - cost

let test () : bool =
  (profit 500) = profit500
let _ = assert (test ())

let test () : bool =
  (profit 490) = profit490
let _ = assert (test ())
