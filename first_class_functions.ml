(*
In OCaml, functions are first-class values,
which means that they can be passed as arguments to other functions,
returned as results, and stored in data structures.
This is a powerful feature that allows for the creation of higher-order functions,
which are functions that take other functions as arguments or return them as results.

*)

let double x = x * 2
let incr x = x + 1
let plus10 x = x + 10
let divide x = x / 2

let funcs = [double; double; divide; incr; plus10; incr]

let rec apply_funcs (fs, x) =
  match fs with
  | [] -> x
  | h :: t -> apply_funcs (t, h x)

let _ = print_int (apply_funcs (funcs, 15)) (* = 42 *)

(*

We can pass functions as arguments to other functions,
