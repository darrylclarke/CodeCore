def add_multiple(*args)
  result = 0
  args.each {|x| result += x }
  return result
end
