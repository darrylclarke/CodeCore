# The assignemt
input = %w(ayden alyssa fred john annalyn)
output = []

puts 'input.each { |x| output << x.capitalize }'
input.each { |x| output << x.capitalize }
print output
puts

# Another way <<< This is the preferred way
puts 'output = input.map {|x| x.capitalize }'
output3 = input.map {|x| x.capitalize }
print output3, "\n\n"

# Another way
print "Enter a sentence - Multiple lines of code:  "
input2 = gets.chomp.split
output2 = []
input2.each do |x|
  output2 << x.capitalize
end

print output2
puts
puts output2
puts
puts "With join:"
puts output2.join(' ')

print "\nEnter a sentence - processed by a single line of code:  "
puts gets.chomp.split.map {|x| x.capitalize }.join(' ')

print "\nEnter a sentence - processed by a different single line of code:  "
gets.chomp.split.each {|x| print x.capitalize, " "}
puts
