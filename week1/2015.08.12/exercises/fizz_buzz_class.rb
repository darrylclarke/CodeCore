class FizzBuzz
  def initialize( first, second )
    @first, @second = first, second
  end

  attr_accessor :first, :second

  def generate()
    output = []
    for n in 1..100
      message = ''
      if n % first == 0
        message += 'FIZZ'
      end
      if n % second == 0
        message += 'BUZZ'
      end
      if message == ''
        message = n.to_s
      end
      output << message
    end
    output
  end
end

# Calling the above
#fb = FizzBuzz.new(2,3)
#print fb.generate
