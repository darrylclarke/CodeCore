class Car
  $global_variable = 3
  @@static_class_variable = 33 # For all cars

  def initialize( model = "", location = "", type = "", capacity = 0 )
   @location = location
  #  @model = model
  #  @type = type
  #  @capacity = capacity
   @model, @type, @capacity = model, type, capacity
  end

  def model
    @model
  end

  def drive( speed )
   ignite_engine
   @speed = speed
   puts "Drive the car"
  end

  def stop
   puts "Whoa - Stopping from speed=#{@speed}"
  end

  def park( location = "" )
   @location = location
   puts "Hitch to post"
  end

  def location  #Getter method
   @location
  end

  # Magic methods
  attr_reader :model
  attr_writer :model
  attr_accessor :type   # c.type = "xxx";  c.type;

  def location=(new_location) # Setter method - Special syntax, = sign is not a 'convention'
    @location = new_location
  end

  def self.max_speed
   200
  end


  private
  def pump_gas
   puts "Pumping gas"
  end

  def ignite_engine
   puts "Starting engine"
  end
end
