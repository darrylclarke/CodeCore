result = []
for index in 1..100
  message = ''
  if index % 3 == 0
    message += 'FIZZ'
  end
  if index % 5 == 0
    message += 'BUZZ'
  end
  if message == ''
    message = index.to_s
  end
  result << message
end

# result.each { |x| puts x }
puts result
print result
puts
