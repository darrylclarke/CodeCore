require "./test_attr_methods.rb"

class Rectangle
  def initialize( width = 0, height = 0 )
    @width, @height = width, height
  end

  attr_accessor :width
  attr_accessor :height

  def area
    @width * @height
  end

  def area2
    width * height  # Calls accessor methods
                    # This is a better practice
                    # You can create a custom accessor that returns inches `@width*2.54`
                    # Then only need to change the accessor, not all the places
                    # where @width is used.

  end
end


class Rectangle
  def info
    "I'm a rectangle"
  end
end

# Monkey Patching
class String
  def greeting
    "Hello from string"
  end
end

c = Rectangle.new
c.width = 5
c.height = 6
puts "Area is #{c.area}"
puts c.info

test = TestAttrMethods.new("hi")
test.b = "Sianara!"
test.c = "Hola!"
test.greetings

puts "hello".greeting
