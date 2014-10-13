fib := method(num,
if(num == 1, return 0) elseif(num == 2, return 1) else(return fib(num - 1) + fib(num - 2))) 

test := method(expected, actual, 
if(expected == actual, "Pass" println, "Fail" println))

test(0, fib(1))
test(1, fib(2))
test(1, fib(3))
test(2, fib(4))
test(3, fib(5))
test(5, fib(6))
test(8, fib(7))
test(13, fib(8))
test(21, fib(9))
test(34, fib(10))

test(514229, fib(30))
test(17711, fib(23))

