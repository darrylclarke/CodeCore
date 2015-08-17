class AwesomeException < StandardError
  attr_accessor :special_message
end

begin
  exc = AwesomeException.new
  exc.special_message = "You did it!"
  raise exc
rescue AwesomeException => e
  puts "My exception: #{e.special_message}"
rescue => e
  puts "Unkown exception #{e.message}"
end

begin
  10/0
rescue AwesomeException => e
  puts "My exception #{e.special_message}"
rescue => e
  puts "Unkown exception #{e.message}"
end
