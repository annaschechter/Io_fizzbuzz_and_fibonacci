fizzbuzz := method(num,
if(num % 15 == 0, true, false))

fizz := method(num,
if(num % 3 == 0, true, false))

buzz := method(num, 
if(num % 5 == 0, true, false))

play := method(num,
if(fizzbuzz(num) == true, "FizzBuzz" println return "FizzBuzz")  elseif(fizz(num) == true, "Fizz" println return "Fizz")elseif(buzz(num) == true, "Buzz" println return "Buzz")else(num println return num))

game := for(a, 1, 100, 1, play(a))

test := method(expected, actual, if(expected == actual, "Pass" println, "Fail" println))

test(true, fizzbuzz(15))
test(false, fizzbuzz(2))
test(true, fizz(6))
test(false, fizzbuzz(2))
test(true, buzz(5))
test(false, fizzbuzz(2))

test(1, play(1))
test("FizzBuzz", play(15))
test("Fizz", play(3))
test("Buzz", play(5))