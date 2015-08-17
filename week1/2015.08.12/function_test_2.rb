def first_value(a, hash = {} )
  a + hash.first[1]
end

puts first_value( 2, {a:1, b:2} ) #should return 1
puts "first value is #{first_value( 3,{a:1, b:2})}" #should return 4
puts "first value is #{first_value 3, a:1, b:2 }" #should return 4

puts first_value 1,  a:441, b:2 # The interpretter treats the last argument like a hash
