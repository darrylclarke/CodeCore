class MetaProgrammingTest

  def method_missing( *args )
    puts "mising "
    print args
  end

  [:a, :b, :c, :d].each do |name|
    define_method(name) do
      puts "I'm the method #{name}"
    end
  end
end

#
# 2.2.2 :001 > load "meta.rb"
# true
# 2.2.2 :002 > t = MetaProgrammingTest.new
# #<MetaProgrammingTest:0x007fe8c28f7408>
# 2.2.2 :003 > t.a
# I'm the method a
# nil
# 2.2.2 :004 > t.b
# I'm the method b
# nil
# 2.2.2 :005 > t.c
# I'm the method c
# nil
# 2.2.2 :006 > t.d
# I'm the method d
# nil
# 2.2.2 :007 > t.e
# mising
# [:e]nil
# 2.2.2 :008 > t.e 1, 2, 3
# mising
# [:e, 1, 2, 3]nil
# 2.2.2 :009 >
