# Write a code that will prompts a user to enter a sentence and then prints out a
# hash whose keys are the letter and values are the number of occurrences of that
# letter, for example if use enters "hello world" will generate:
# {"h" => 1, "e" => 1, "l" => 3, "o" => 2, "w" => 1, "d" => 1}

def hashify( input_string )
  ret = {}
  # Check if a string was passed in, abort if not
  return ret if !input_string.is_a? String

  # OK, we have a string
  input_string.each_char do |x|
    if !ret[x]    # if it is nil
      ret[x] = 1  # set it to 1
    else
      ret[x] += 1 # else increment it
    end
  end

  return ret
end

# The main method
print "Enter a string:  "
print hashify( gets.chomp )
puts
