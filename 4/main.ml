open Base
open Stdio

let rec reversed_rec x accum =
match x with
	| x when x < 10 -> (accum * 10) + x
	| _ -> reversed_rec (x / 10) ((accum * 10) + (x % 10))

let reversed x = reversed_rec x 0

let is_palindrome x = x = reversed x

let rec pal hi lo max =
match hi with
	| hi when hi = 1000 && lo = 1000 -> max
	| hi when hi = 1000 -> pal (lo + 1) (lo + 1) max
	| hi when hi * lo > max && is_palindrome(hi * lo) -> pal (hi + 1) lo (hi * lo)
	| _ -> pal (hi + 1) lo max

let () = printf "%d\n" (pal 100 100 0)
