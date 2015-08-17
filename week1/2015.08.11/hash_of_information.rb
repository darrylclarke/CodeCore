# Ask the user for personal information: first name, last name, city of birth and age.
# Then store that information in a hash. After that loop through the hash and display
# the results, for example:
#
# Your first name is Tam.
#
# Capitalize the inputs from the user if they are capitalizable 

# Set up the keys
fn   = :"First Name"
ln   = :"Last Name"
city = :"City of Birth"
age  = :"Age"
data = {}

puts "Give me some personal information:"
WIDTH = 14
print "#{fn.to_s.ljust(WIDTH)}? ";    data[ fn   ] = gets.chomp
print "#{ln.to_s.ljust(WIDTH)}? ";    data[ ln   ] = gets.chomp
print "#{city.to_s.ljust(WIDTH)}? ";  data[ city ] = gets.chomp
print "#{age.to_s.ljust(WIDTH)}? ";   data[ age  ] = gets.chomp

data.each {|info_name, info_data| puts "Your #{info_name} is #{info_data}."}

data.keys.each { |x| puts  x.class }
