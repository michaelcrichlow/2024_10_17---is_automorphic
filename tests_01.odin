package test

import "core:fmt"
import "core:strings"
print :: fmt.println

main :: proc() {

	print(is_automorphic(5))
	print(is_automorphic(6))
	print(is_automorphic(7))
	print(is_automorphic(25))
	// OUTPUT:
	// true 
	// true 
	// false
	// true 

}

is_automorphic :: proc(n: int) -> bool {
	square := n * n

	// creating a string allocates memory, so you have to
	// delete it once you no longer need it
	square_as_string := str(square)
	defer delete(square_as_string) // deletes the string at the end of the scope

	n_as_string := str(n)
	defer delete(n_as_string)

	res := strings.has_suffix(square_as_string, n_as_string)

	return res
}
