require "~/codecore/util/column_printer.rb"

class Base
  def initialize( size = 0 )
    @size = size
    puts "The object id of @size = #{@size.object_id}."
  end

  attr_accessor :size

  def print( msg )
    puts msg
    cp = ColumnPrinter.new
    cp << ["***The data is @@ now", :colour, colour]
    constant = 15
    cp << ["***The @@ is", :constant, constant ]
    cp << ["*** Hello @@ howareyounow", "apple", 15.56]
    cp << ["string to display", 17.5]
    cp << [:constant, constant]
    cp << [constant]
    cp << constant
    cp.print

  end
end

class Derived < Base
  def initialize( size = 55, colour = "green")
    super( size )
    @colour = colour
  end

  attr_accessor :colour

  def print( msg )
    super( msg )
    puts "Colour is:  #{colour}"
  end

  def modify(new_size)
    puts "BEFORE:  size = #{size}.  The object id of size = #{size.object_id}."
    size = new_size  # If you put "self." before "size = " then this works,
                     # but the object ids are the same regardless.
    puts "AFTER:  size = #{size}.  The object id of size = #{size.object_id}."
  end
end
print "\n"*5
d = Derived.new
d.print('Before, notice that size is the default, 55:')
d.modify( 1000 )

puts
d.print('After, size should be 1000, but never was changed:')
puts "END:  The object id of @size = #{d.size.object_id}."
print "\n"*5
