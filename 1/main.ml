open Base
open Stdio

let () =
	let accum = ref 0 in
	for i = 0 to 999 do
		if i % 3 = 0 || i % 5 = 0 then
			accum := !accum + i
	done;
	printf "%d\n" !accum
