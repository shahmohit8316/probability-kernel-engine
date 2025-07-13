(* Axiom 2: P(Ω) = 1 *)

type event = string

let sample_space : event list = ["Heads"; "Tails"]

let probability (event : event) : float =
  match event with
  | "Heads" -> 0.5
  | "Tails" -> 0.5
  | _ -> 0.0

let total_probability (events : event list) : float =
  List.fold_left (fun acc e -> acc +. probability e) 0.0 events

let check_axiom_2 () : unit =
  let total = total_probability sample_space in
  if abs_float (total -. 1.0) > 0.00001 then
    failwith ("Axiom 2 violated: Total probability = " ^ string_of_float total)
  else
    Printf.printf "Axiom 2 OK: Total probability over sample space = %.2f\n" total
