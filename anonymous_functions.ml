let _ = print_endline "Hello, world!"

(* anonynous functions *)

let add = fun x y -> x + y

let _ = print_int (add 1 2)

(*

" let f p = e " really means:

let f = fun p -> e

*)

let double_or_triple f =
  if f 7
    then fun x -> x * 2
    else fun x -> x * 3

    let _ = print_newline (); print_int ((double_or_triple (fun x -> x > 5)) 10)