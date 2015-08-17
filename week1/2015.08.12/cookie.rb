# /Users/darrylclarke/codecore/2015.08.12/cookie.rb
# Class names start with a capital letter - they are treated as constants
# You don't re-define a class a,b
# Conventions:
#     - Class names are CamelCase, not snake_case
#     - File name for class is snake_case
class Cookie
  @@global = 5
  # Instance methods / object methods are public by default
  def bake
     puts "Put me in the oven"
     self # now can c.bake.eat
  end

  def eat
    @@global += 1
    puts "#{dip_in_milk} - Yummy  Global=#{@@global}"
    self
  end

  def self.info
    # call with Cookie.info
    # also call with c.class.info
    self.extra_info
    puts "I'm a Cookie class.  Global=#{@@global}"
  end


  private
  # Even though this class method is private, one can still call it as if it is public
  def self.extra_info
    puts "I'm a super cookie class"
  end

  def dip_in_milk
    "Dipping in milk"
  end

  public

  def another_public
  end

end
