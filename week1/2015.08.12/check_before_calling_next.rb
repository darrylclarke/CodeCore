def a
  puts "a called"
  true
end

def b
  puts "b called"
  false
end

def c
  puts "c called"
  true
end

# gives
# a called
# b called
a && b && c


a = 1
a.respond_to? 'capitalize' # gives false
a = "asdf"
a.respond_to? 'capitalize' # gives true
