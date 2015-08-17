# Given a hash:
# {:a => "123", :b => "345", :c => "678", :d => "910"}
#
# Write a code that generates an array that combines the keys and values:
#
# so the resulting array should be:
# ["a123", "b345", "c678", "d910"]


input = {:a => "123", :b => "345", :c => "678", :d => "910"}
output = []

input.each {|key, value| output << "#{key}#{value}"}

print output
puts
