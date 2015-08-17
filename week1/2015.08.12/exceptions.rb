# All the code after the exception will not execute
# Bad in web applications

begin
  10/0
rescue # This captures any exception of any kind
  puts "Can't divide by zero"
end

begin
  10/0
rescue => e # This captures any exception of any kind
  # e is an object that contains the error message and back trace
  puts "Can't divide by zero - Original message #{e.message}"
  puts "Can't divide by zero - Original class   #{e.class}"
  puts "Can't divide by zero - Backtrace \n#{e.backtrace}"
end

begin
  10/0
rescue ZeroDivisionError => e
  puts "Can't divide by zero:  |#{e.message}|"
rescue => e
  puts "Unknown exception:  #{e.message}"
end

class MyFirstException < StandardError

end
