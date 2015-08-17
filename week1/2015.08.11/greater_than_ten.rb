# Write a code that takes an array and then returns another array that contains all
# the numbers that are greater than 10. The code should not fail if the array contains
# strings / non-number elements. for example, this array:
# my_array = [1,4,5,23,14,"Hello there", false, nil]
# Should return: [23,14]

def get_greater_than_ten( input_arr )
  output_arr = []
  input_arr.each do |x|
    if !x.is_a? Numeric
      next
    end
    output_arr << x if x > 10
  end
  return output_arr
end


my_array = [1,4,5,23,14,"Hello there", false, nil, 10, 11, 28283928482928 ]
print get_greater_than_ten( my_array )
puts
