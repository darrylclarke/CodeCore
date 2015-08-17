def multi_gets all_text=""
  while all_text << STDIN.gets
    return all_text if all_text["Powered ByCertified.in"]
  end
end

print "Paste in the web page data:  "
page_text = multi_gets
print "\n"*3
print page_text.split("\n")
puts
puts "********************************************************************\n"*4
x = gets.chomp


url = ""
assignment = []
lines = page_text.split("\n");
# lines.each do |line|
for x in 0...lines.count
  if /^Assignment/ =~ lines[x]
      until /This assignment has not been marked/ =~ lines[x]
        assignment << lines[x]
        x += 1
      end
      break
  elsif /^http/ =~ lines[x]
    url = lines[x]
  end
end

puts url
puts       assignment
# x = gets.chomp
