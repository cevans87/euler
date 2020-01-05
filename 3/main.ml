open Base
open Stdio

let rec fac num div =
match num with
	| num when num = 1 -> div
	| num when num % div = 0 -> fac (num / div) div
	| _ -> fac num (div + 1)

let () = printf "%d\n" (fac 600851475143 2)
