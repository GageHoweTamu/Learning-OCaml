(*
Records are a way to store multiple values in a single value, like structs in C.
*)

type person = {name: string;
              age: int;
              job: string};;

let print_person p = 
  print_string p.name;
  print_string " is ";
  print_int p.age;
  print_string " years old and works as a ";
  print_string p.job;
  print_newline();;

let p = {name="John"; age=25; job="Engineer"};;

let _ = print_person p;;

let x = match p with
  | {name="John"; age=25; job="Engineer"} -> "John is an engineer, age 25"
  | _ -> "I don't know who this is";;
let _ = print_string x; print_newline();;

let y = match p.name with
  | "John" -> "John is an engineer"
  | _ -> "I don't know who this is";;
let _ = print_string y; print_newline();;