# Given an array of words. Return back an array of numbers that contains the
# length of each word in the first array in the same order.

input_array = [ 'hello', 'there', 'how', 'are', 'you?']
output_array = Array.new

# a block is a nameless method, 2 ways to do it
# input_array.each { |x| output_array << x.length }
input_array.each do |num| # num is the argument that I am passing to the block
  output_array << num.length
end

# output_array.each{ |x| puts x }
puts output_array
print output_array
puts
/Users/darrylclarke/codecore/2015.08.11/cities_large_or_small.rb/Users/darrylclarke/codecore/2015.08.11/flatten_multi_d_array.rb