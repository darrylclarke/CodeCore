# for querying the database with Rails
# for changing data

my_lambda = lambda {puts "I'm a lambda"}
my_lambda2 = lambda {puts "I'm a lambda2"}
my_lambda3 = lambda {puts "I'm a lambda3 - return";  return}

puts my_lambda.call

def my_method( code, code2 )
  puts(">>>>>>")
  code.call
  code2.call
  puts("<<<<<")
end

def my_method_many( *codes )
  puts(">>>>>>")
  codes.each {|code| code.call }
  puts("<<<<<")
end

my_method( my_lambda, my_lambda2 )
my_method_many( my_lambda, my_lambda, my_lambda2, my_lambda3 )


lam = lambda { |x| puts "#{x}"}
lam.call(1) # need the argument

my_proc = proc { |x| puts "proc with no arguments #{x}"}
my_proc.call # more forgiving, don't need arguments
# arguments nil if not provided

puts "This will fail"
my_proc2 = proc {   return}
my_proc2.call
