# Only assign if it hasn't been assigned before
a ||= 10
a ||= 5
puts "This should be 10 --> #{a}"

b ||= "" # this is a valid object
b ||= "hello"
puts "This should be blank --> |#{b}|"

c ||= nil
c ||= 555
puts "This should be 555 --> #{c}"
