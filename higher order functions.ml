(* map : ('a -> 'b) -> 'a list -> 'b list (This is a higher order function)
 * Apply the function f to each element of the list l, and return a list of the results.
 * Example: map (fun x -> x + 1) [1; 2; 3] = [2; 3; 4]
 *)

 let rec map (f : 'a -> 'b) (l : 'a list) : 'b list =
  match l with
  | [] -> print_string "Empty list\n"; []
  | h::t -> (f h)::(map f t)

(* can also be written as:
let rec map (f,x) =
  match x with
  | [] -> []
  | h::t -> (f h)::(map (f,t))
*)

(* filter : ('a -> bool) -> 'a list -> 'a list
 * Return a list of all elements of the list l that satisfy the predicate f.
 * Example: filter (fun x -> x mod 2 = 0) [1; 2; 3; 4] = [2; 4]
 *)

let rec filter f xs =
  match xs with
  | [] -> []
  | h::t -> if f h
            then h::(filter f t)
            else filter f t



(* Helper functions*)



let addOne (x : int ) : int = x + 1

let rec print_list = function
| [] -> ()
| e::l -> print_int e ; print_string " ; " ; print_list l



(* Testing *)



let myList = [1; 2; 3; 4; 5]

let _ = print_list (map addOne myList)