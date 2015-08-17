# Write a method that takes the hash and prints if city is large (more than 100,000)
# or small (otherwise). Printing something like: Vancouver is a large city

SIZE_THRESHOLD = 100000

def process_cities( input )
  input.each do |key, value|
    if value > SIZE_THRESHOLD
      puts "#{key} is a large city."
    else
      puts "#{key} is a small city."
    end
  end
end

bc_cities_population = {
  vancouver: 2135201, victoria:  316327, abbotsford: 149855,
  kelowna: 141767, nanaimo:  88799, white_rock: 82368,
  kamloops: 73472, chilliwack: 66382
}
process_cities (bc_cities_population)
