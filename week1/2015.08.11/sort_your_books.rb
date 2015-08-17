# Write some code that keeps asking use for book names until the user enters "exit".
# After typing exit the program should display all the entered book names sorted.

puts "Enter book names and then 'exit' when done."
books = []

while true
  book = gets.chomp
  if book == 'exit'
    break
  end
  books << book
end

puts "\n", "Your books were:\n", books.sort  
