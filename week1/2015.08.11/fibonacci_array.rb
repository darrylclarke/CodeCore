# Given a number N from the user. Generate an array that contains the first N numbers
# of the fibonacci sequence.
# note: In mathematics, the Fibonacci numbers or Fibonacci series or Fibonacci
# sequence are the numbers in the following integer sequence: 
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...

fibonacci_number = 1
fibonacci_number_last = 0

print "How many fibonacci numbers do you want?  "
length = gets.to_i
output = []

while length > 0
  output << fibonacci_number

  # Calcualte next fibonacci number
  temp = fibonacci_number
  fibonacci_number = fibonacci_number + fibonacci_number_last
  fibonacci_number_last = temp

  length -= 1
end

# implementation 1
puts "implementation 1"
str = ""
output.each { |x| str += "#{x}, "}
str.chop!.chop!
puts str

# implementation 2
puts "implementation 2"
puts output.join(", ")
