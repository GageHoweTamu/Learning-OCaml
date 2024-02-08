(* 

In OCaml, variants are a way to define a new type with a fixed set of
possible values. For example, we could define a type for the days of the
week.

*)

type shape =
  | Circle of float  (* radius *)
  | Rectangle of float * float  (* width, height *)

let myCircle = Circle(0.5)

let x = match myCircle with
  | Circle 0.5 -> print_string("its a circle with radius 0.5")
  | Circle _ -> print_string("its a circle")
  | Rectangle _ -> print_string("its a rectangle")
  | _ -> print_string("idk lol")