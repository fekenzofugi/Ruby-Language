=begin 
  This project is all about Blocks in Ruby.
=end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

array.each do |n|
  puts n 
end

#or

array.each {|n| puts n}

#yield

def hello 
  yield
  yield
end

hello {puts "hello"}

def hello_world
  yield("hello world")
  yield("grettings world")
end

hello_world {|type| puts type}