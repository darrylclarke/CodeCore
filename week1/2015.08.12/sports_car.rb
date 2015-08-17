require './car.rb'

class SportsCar < Car
  def initialize( engine_size = 3000 )
    @engine_size = engine_size
    super("Ferrari")
  end

  attr_accessor :engine_size

  def park(location = "")
    puts "Valet parking"
    super( location )
  end

end
