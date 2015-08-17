require "./cat.rb"
require "./bird.rb"

results = []

for x in 0...100
  feline = Cat.new("felix")
  avian  = Bird.new("flyboy")

  result = feline.catch( avian )
  if !result
    puts "fly away"
  end
  feline.eat(avian)
  results << result
end

print results
puts
puts results.count { |x| x == true }
