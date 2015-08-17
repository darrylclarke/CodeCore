def my_method
  puts "Hello"
  yield if block_given? # this will execute the block given to the my_method
                        # block gets injected here
  puts "Goodbye"
end

my_method  do
  puts ">>>>>"
  puts "Calling with this"
  puts "<<<<<"
end

# my_method { puts "<<< calling with {} >>>"}
my_method { puts "<<< calling with {} >>>"}


#####################################################################
#####################################################################
#####################################################################

def my_method2( hash = {} )
  puts "Hello #{hash[:name]}"
  yield if block_given? # this will execute the block given to the my_method
                        # block gets injected here
  puts "Goodbye"
end

my_method2  name: "Darryl" do
  puts ">>>>>"
  puts "Calling with this"
  puts "<<<<<"
end

# my_method { puts "<<< calling with {} >>>"}
my_method2 ({name:"Darryl"}){ puts "<<< calling with {} >>>"}

puts
puts "my_method2 with no block:"
my_method2 { puts "<<< calling with {} >>>"}
