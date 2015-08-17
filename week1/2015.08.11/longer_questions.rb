# Given an array of questions like this:
# questions = ["What is your name", "How are you?", "Is that right?", "Are you John?", "How is everything?"]
# and returns an array of questions whose total character count is greater than 15.
# Bonus: Do it in two ways, one of them using select method for Ruby Arrays.

def get_longer_than_ten( input_arr )
  output_arr = []
  input_arr.each do |item|
    output_arr << item if item.length > 15
  end
  return output_arr
end

def get_longer_than_ten_with_select( input_arr )
  output_arr = input_arr.select { |item| item.length > 15 }
  return output_arr
end

questions = ["What is your name", "How are you?", "Is that right?", "Are you John?", "How is everything?"]
print get_longer_than_ten( questions )
puts
print get_longer_than_ten_with_select( questions )
puts
