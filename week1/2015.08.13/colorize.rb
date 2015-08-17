require "colorize"
# http://www.rubydoc.info/github/fazibear/colorize/Colorize/InstanceMethods#colorize-instance_method
# ct = ColorText.new

# ct.colorize('Hello', ColorText::YELLOW )
# puts "hello".blue

puts "Hello again".colorize(:green).on_red + " Super".colorize(:red).colorize( :background => :white)
