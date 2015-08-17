x = 2

while x <= 256
  puts x
  x *= 2
end

while x > 0
  puts x
  x /= 2
end

puts "Enter a number:  "
number = gets.to_i
puts
if number < 100
  for x in number..100
    puts x
  end
end
