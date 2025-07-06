type event = string

(* probability function satisfying kolmogotrow axiom 1 : p(a) >_ 0 *)
let probability (event : event) : float =
  match event with
  | "Heads" -> 0.5
  | "Tails" -> 0.5
  |_ -> 0.0

(* Runtime checker to enforce axiom 1 *)
let check_axiom_1 (event : event) : unit =
  let p = probability event in 
  if p < 0.0 then
    failwith ("Axiom 1 violated : Negative probability for event: " ^ event)
  else
    Printf.printf "Axiom 1 ok for event '%s' : p = %.2f\n" event p
