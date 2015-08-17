puts "Enter some information, keep entering it until you are done then enter 'exit'."
puts

input_array = [] #Array.new

while true
  print "Enter your information:  "
  message = gets.chomp
  if message == "exit"
    break
  end
  input_array.push( message )
end

puts "Your entered #{input_array.length} items."
