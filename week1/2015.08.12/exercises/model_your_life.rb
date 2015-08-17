# https://codecore.certified.in/learning_modules/model-your-life-in-objects-6/submissions
# Assignment: Model your life in objects Next Module
#
# Pick three objects from the room around you and model them in terms of classes.
#
# Make sure every class contains:
# Public methods
# Private methods
# Attribute accessors

class Furniture
  def initialize( name="", purpose="", location="")
    @name, @purpose, @location = name, purpose, location
    @material = "glue and paper"
    puts "!!!!! Furniture, ctor name=#{name} purpose=#{purpose} location=#{location} material=#{material}"
  end

  attr_accessor :name
  attr_accessor :purpose
  attr_accessor :location
  # attr_reader   :material

  def material
    puts "Getter:  Getting material.  It is #{@material}"
    # 10/0
    @material
  end

  def move( new_location )
    location = new_location
    puts "#{name} has been moved to #{location}"
  end

  private
  # attr_writer :material
  def material=(m)
    puts "Setter:  Setting material to #{m}"
    @material = m
  end


  def change_material( new_material )
    @material = new_material
    puts "#{name} has been re-made in #{material}"
  end

  def print
    puts "I am a:  #{self.class}."
    puts "I am made out of:  #{self.material}."
    puts "My purpose is:  #{purpose}."
    puts "I am located at:  #{location}."
  end

end

class Table < Furniture
  def initialize( name="", purpose="", location="", number_of_legs=0 )
    @number_of_legs = number_of_legs
    @material = "Wood"
    super( name, purpose, location )
  end

  attr_accessor :number_of_legs

  def print
    super
    puts "I have #{number_of_legs} legs."
  end

  def transform( new_material )
    change_material( new_material )
  end

end


class Chair < Furniture
  # def initialize( name="", purpose="", location="", colour="" )
  #   @colour = colour
  #   @material = "Plastic"
  #   super( name, purpose, location )
  # end
  def initialize( colour )
    @material = "Plastic"
    @colour = colour
    puts "!!!!! Chair, ctor material=#{material} colour=#{colour}"
    super
  end

  attr_accessor :colour

  def print
    super
    puts "I am #{colour}."
    # puts "print::material  is a #{self.material.object_id} #{self.material}"
    # puts "print::material2 is a #{material.object_id} #{material}"
    # puts "print::material3 is a #{@material.object_id} #{@material}"
  end

  def transform( new_material )
    # another method of changing the material, the setter is private
    # puts "material was #{material}, new is #{new_material}."
    # material = new_material
    self.material = new_material
    # self.purpose = "working"
    # puts "material  is a #{self.material.object_id} #{self.material}"
    # puts "material2 is a #{material.object_id} #{material}"
    # puts "material3 is a #{@material.object_id} #{@material}"
    # change_material( new_material )
    # puts "material is now #{material}."
  end

end

puts "*** Do table **********************************************"
t = Table.new
t.number_of_legs = 4
t.name = "Dining Room Table"
t.purpose = "For eating sunday dinner"
t.location = "Dining room"

t.print
puts

t.transform( "Steel" )

puts
puts "Now with steel..."
t.print
puts


puts "*** Now do chair **********************************************"
c = Chair.new("Yellow")
# c.colour = "Red"
c.name = "Laz-y-boy chair"
c.purpose = "For relaxing"
c.location = "Family room"

c.print
puts

c.transform( "Glass" )
puts "chair is now made of #{c.material}."

c.location = "Basement"
# c.material = "paper"
puts
puts "Now with steel..."
c.print
puts
