# require 'tools'

def multiply(a,b=1)
  a*b
end

def add(a,b)
  a+b
end

def add_multiple( first, *args)
  result = first
  args.each {|x| result += x }
  result
end

def is_valid? #This is a convention for methods that return true/false
  true
end

def this_changes_something! #This is a convention for doing something that is destructive or dangerous
  # in Rails, ! signifies an exception may be thrown
end

def save!
  # in Rails, this throws an exception if save fails
end

def by_five?( x )
  x%5==0
end

def largest( *list )
  list.max_by {|v| v }
end

def largest_short( *list )
  list.max
end

puts "Largest is #{largest -11,-3,-3,-123,-5,-6}"
puts "largest_short is #{largest_short -11,-3,-3,-123,-5,-6}"

puts multiply 4,5
puts multiply 144
puts add 4,5

print "Multiples: "
puts add_multiple 1,2,3,4,5,6,7,8,9,10
puts add_multiple 1

puts "by_five(35) returns #{by_five? 35}"
puts "by_five(354) returns #{by_five? 354}"

def greeting( str='' )
   "Hello #{str.capitalize}"
end

def greeting2( str )
  puts "Hello #{str}"
end

puts greeting
puts greeting "zed"
greeting2("Darryl")
puts (greeting2 "With puts").class

greeting = "hello2"
puts greeting
