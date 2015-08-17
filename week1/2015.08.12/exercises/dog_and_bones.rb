class Dog
  def initialize( colour, type )
    @colour, @type = colour, type
    @bones = []
  end

  attr_accessor :colour, :type, :bones

  def give( bone )
    if bones.count < 3
      bones << bone
    else
      puts "I have too many bones"
    end
  end

  def eat_bone
    bone = bones.pop
    if bone
      puts "Yummy, I ate a #{bone.size} inch bone."
    end
  end
end

class Bone
  def initialize( size )
    @size = size
  end

  attr_accessor :size
end


# Running the above

dog = Dog.new('black', 'hound')

dog.give Bone.new(15)
dog.give Bone.new(5)
dog.give Bone.new(20)
dog.give Bone.new(100)

dog.eat_bone
dog.eat_bone
dog.eat_bone
