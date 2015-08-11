s = "Hello World 1234"
puts s[-4..-1]



s = "Hello"
for x in 0...(s.length)
  puts s[x].swapcase
end
puts

puts "Most common letter"
s = "Helloeeeee"
hash = Hash.new(0)
s.each_char do |c|
  hash[c] += 1
  # hash[c] += 1 unless c == " " #used to filter the space
end
max = hash.values.max
one_element_hash = hash.select{ |key| hash[key] == max }
puts "The string is:  #{s}"
puts "The letter #{one_element_hash.to_a[0][0]} happens #{one_element_hash.to_a[0][1]} times."
another_solution = hash.max_by{ |key,value| value }.to_a
puts "Also,      #{another_solution[0]} happens #{another_solution[1]} times."
puts

puts "sine and cosine"
angle = 45.0
MY_PI = 3.1415
radians = angle * MY_PI / 180
puts "sin(#{angle} is #{Math.sin(radians)})"
puts "cos(#{angle} is #{Math.cos(radians)})"
puts

puts "Convert angle to radians"
angle = 45.0
radians = angle * Math::PI / 180
puts "For an angle of #{angle}, there are #{radians} radians."
puts


puts "Check if >10 or >100"
a = 110
if a > 100
  puts "Hello Universe"
elsif a > 10
  puts "Hello World"
end
puts


puts "Power of 2 and power of 3"
a = 9
if a%3 == 0
  puts a**3
elsif a%2 == 0
  puts a**2
else
  puts a
end
puts

puts "Test:  Does it has C"
str = "super crazy"
#begin method
if /C/ =~ str.upcase
  puts 'Yes it has C'
else
  puts 'There is no C'
end
puts


puts "Coffee shop test"
print "What coffee shop do you want? "
shop = gets.chomp
case shop
when 'Starbucks'
  reply = 'Grande Latte'
when 'Tim Hortons'
  reply = 'Double Double'
when 'Blenz'
  reply = 'Medium Coffee'
else
  reply = "I don't know this shop"
end
puts reply
puts


puts "Questions on Hexagon, etc."
questions       = { 1 => "How many sides in a Triangle", 2 => "How many sides in a Hexagon", 3=>"How many sides in a Pentagon" }
display_options =  {1 => [2,3,6], 2 =>[2, 6, 8], 3 => [2, 5, 19]}
answers         =  {1 => 3,       2 => 6,         3 => 5 }
total = 0

puts "For each question, please enter the option number, not the number of sides."
puts "Ready..."
puts
for question_num in 1..3
  puts questions[ question_num ]
  for x in 1..( display_options[ question_num ].length )
    puts "#{x}.  #{display_options[ question_num ][x-1]}"
  end
  print "What is the answer? "
  answer = gets.to_i
  if answer >=1 && answer <=3 && display_options[ question_num ][answer-1] == answers[ question_num ]
    puts "Correct"
    total += 1
  else
    correct_option_num = -1
    for x in 1..( display_options[ question_num ].length )
      # puts "x is #{x} answer is #{answers[question_num]}"
      if display_options[ question_num ][x-1] == answers[question_num]
        correct_option_num = x
        break;
      end
    end
    puts "Wrong, option #{correct_option_num}, #{answers[ question_num ]} was the correct answer"
  end
  puts
end
puts "You had #{total} of 3 right."
puts
