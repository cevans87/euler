open Base
open Stdio

let rec fib a b accum =
match a with
	| a when a > 4_000_000 -> accum
	| a when a % 2 = 0 -> fib b (a + b) (accum + a)
	| _ -> fib b (a + b) accum

let () = printf "%d\n" (fib 1 2 0)
