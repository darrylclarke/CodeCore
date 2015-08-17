require "./animal.rb"

class Bird < Animal
  # def initialize( name )
  #   super( name )
  # end

  def can_fly_away?
    rand(2).even?
  end
end
