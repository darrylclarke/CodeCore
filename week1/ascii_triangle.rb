print "Fancy - Enter a number:  "
number = gets.to_i
counter = 1
until counter > number
  # print " " * (counter - number ) + 'O ' * counter
  puts "#{" " * (number - counter)}#{'O ' * counter}"
  counter += 1
end
