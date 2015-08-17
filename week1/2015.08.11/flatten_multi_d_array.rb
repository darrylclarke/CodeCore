arr = [[1,2,3], [4,5,6], [7,8,9]]

print arr.flatten, "\n"

puts 'print arr.flat_map { |x| puts x }'
print arr.flat_map { |x| puts x }, "\n"
# [nil, nil, nil] is from the three puts x calls returning nil each time.

puts 'puts "#{arr.join}"'
puts "#{arr.join}"

puts 'array.each do |x|'
array.each do |x|
  x.each do |y|
    puts y
  end
end
