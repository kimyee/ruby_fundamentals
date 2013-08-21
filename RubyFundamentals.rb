Exercise: Maximum
def maximum(arr)
  arr.max
end

assert_equal maximum([2, 42, 22, 02]), 42
assert_equal maximum([-2, 0, 33, 304, 2, -2]), 304
assert_equal maximum([1]), 1

Exercise: Subtracting Out The Sugar
assert_equal 2.+(2), 2 + 2
assert_equal 40.+(2), 42

Exercise: Your Favorite and Mine, Fibonacci!
def fibo_finder(n)
  case n
    when 0
      return 0
    when 1
      return 1
    else
      return fibo_finder(n-1)+fibo_finder(n-2)
  end
end

assert_equal 0, fibo_finder(0)
assert_equal 1, fibo_finder(1)
assert_equal 3, fibo_finder(4)
assert_equal 13, fibo_finder(7)
assert_equal 55, fibo_finder(10)

Exercise: Happy Numbers #INCOMPLETE
def happy_numbers?(number)
	if number == 1
		puts "true"
	end

	if number != 1
		number.to_s.split(//).each do|digit| 
			puts digit.to_i**2
			end
		end
end

 assert_equal happy_number?(7), true
 assert_equal happy_number?(986543210), true
 assert_equal happy_number?(2), false
 assert_equal happy_number?(189), false

Exercise: Prime Factors #INCOMPLETE
def prime_factors(num)
  ___
end

assert_equal prime_factors(102), [2, 3, 17]
assert_equal prime_factors(896680), [2, 5, 29, 773]
assert_equal prime_factors(42), [2, 3, 7]

Exercise: Reverse 
assert_equal 'nocab yknuhc'.reverse, 'nocab yknuhc'.reverse


Exercise: Hello World
assert_equal 'HELLO WORLD', 'hello world'.upcase

Exercise: There's No Way This Works
@name = "Dave"
str = "My mind is going #@name"

assert_equal (str == "My mind is going Dave"), true

Exercise: There's No Way This Works Version 2
str = "Hello" "World"

Exercise: Brackets and Searches
assert_equal str, "HelloWorld"
assert_equal "hello world"['e'], "e"
assert_equal "what"['e'],        nil
assert_equal "rubeque"['e'],     "e"
assert_equal "E"['e'],           nil

Exercise: No Limit
assert_equal ["1", "2", "3"], "1,2,3".split(',', -1)
assert_equal ["", "", "1", "2", "3"], ",,1,2,3".split(',', -1)
assert_equal ["1", "2", "3", "", ""], "1,2,3,,".split(',', -1)

Exercise: && Versus And
roses = "blue" && "red"
violets = "blue" and "red"

assert_equal roses, "red"
assert_equal violets, "blue"

Exercise: Hiring Programmers - Boolean Expressions in Ruby
is_an_experienced_ruby_programmer =
  (candidate.languages_worked_with.include? 'Ruby') &&
  (candidate.years_of_experience >= 2 || candidate.github_points >= 500) &&
  ! (candidate.age < 15 || candidate.applied_recently?)

  Exercise: Ternary Operator
  a = "Miles O'Brien"
b = "Barack Obama"

assert_equal ((a =~ /[ ]\w'/) ?"Irish" : "Not Irish"), "Irish"
assert_equal ((b =~ /[ ]\w'/) ?"Irish" : "Not Irish"), "Not Irish"

Exercise: Shotgun Assignment
a, b, c = "eat", "chunky", "bacon"

assert_equal a, "eat"
assert_equal b, "chunky"
assert_equal c, "bacon"

Exercise: Or Equal
b = 8
c = false

a ||= "rubeque"
b ||= "rubeque"
c ||= "rubeque"

assert_equal a, "rubeque"
assert_equal b, 8
assert_equal c, "rubeque"