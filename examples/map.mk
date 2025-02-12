let map = fun(arr, f) {
	let do_map = fun(arr, acc) {
		if (len(arr) == 0) {
			return acc;
		} else {
			return do_map(tail(arr), push(acc, f(head(arr))));
		}
	}
	return do_map(arr, []);
}

let print_arr = fun(arr) {
	let do_print_arr = fun(arr) {
		if (len(arr) == 0) { return; }
		if (len(arr) == 1) {
			print(head(arr))
			return;
		}

		print(head(arr))
		print(", ")
		do_print_arr(tail(arr))
	}
	print("[")
	do_print_arr(arr)
	print("]")
}

let a = [0, 1, 2, 3, 4, 5, 6];
let double = fun(x) { 2 * x; }

let fib = fun(n) {
	if (n == 0) { return 1; }
	if (n == 1) { return 1; }
	return fib(n-1) + fib(n-2);
}

let double_a = map(a, double);

print_arr(a);
print_arr(double_a);
print_arr(map(a, fib))
