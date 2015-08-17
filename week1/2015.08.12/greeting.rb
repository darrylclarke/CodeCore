def greeting
  puts ">>>>>>"
  name = "Darryl"
  age = 45
  yield( name, age )
  puts "<<<<<<"
end

greeting do |name, ageisnow|
  puts "hello #{name}, you are #{ageisnow} old."
end

greeting do |n, a|
  puts "bye #{n} #{a}"
end
