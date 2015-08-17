require "./animal.rb"

class Cat < Animal

  # def initialize( name )
  #   super(name)
  # end

  def catch( animal )
    if !animal.can_fly_away?
      puts "#{name} is catching #{animal.name}"
      @grab = animal
      true
    else
      false
    end
  end

  def eat( animal )
    puts "eating #{animal.name}" if @grab
    @grab = nil
  end



end
