capitals = {'British Columbia' => 'Victoria', 'Ontario' => 'Toronto', 'Quebec' => 'Quebec City'}
capitals.each {|prov,city| puts "The capital of #{prov} is #{city}"}

other_capitals = { BC:'Victoria', ON:'Toronto', QC:'Quebec City'}
other_capitals.each {|prov,city| puts "The capital of #{prov} is #{city}"}

data = {'BC' => ['Vancouver', 'Richmond'], "AB" => ['Edmonton', 'Calgary']}
data.each do |province, city_array|
  puts "#{province}: #{city_array.sort.join(" ")}"
end
