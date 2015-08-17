SIZE = 1000000
DEBUG = false
# Generate a big array
numbers = (1..SIZE).to_a

# Take a random element and add it back to the numbers
numbers << numbers.sample

numbers.shuffle!

# Solution 1
before_time = Time.now
frequencies = Hash.new(0)

numbers.each do |number|
  if frequencies[number] == 0
    frequencies[number] +=1
  else
    puts "Method \# 1 - #{number} is repeated"
    break
  end
end
puts "Solution 1 took #{(Time.now - before_time)*1000}"

# Solution 2
before_time = Time.now
numbers.sort!
last_x = nil
for x in 1...numbers.length
  if DEBUG ; puts "Looking at prev=#{numbers[x-1]}, current=#{numbers[x]}"; end;
  if numbers[x-1] == numbers[x]
    puts "Method \# 2 - #{numbers[x]} is repeated"
    break;
  end
end
puts "Solution 2 took #{(Time.now - before_time)*1000}"


# Solution 3
before_time = Time.now
size = numbers.count
for ind in 0...size
  if numbers[numbers[ind].abs ] > 0
    numbers[numbers[ind].abs ] = -(numbers[numbers[ind].abs])
  else
    puts "Method \# 3 - #{numbers[ind].abs} is repeated"
    break
  end
end
puts "Solution 3 took #{(Time.now - before_time)*1000}"
