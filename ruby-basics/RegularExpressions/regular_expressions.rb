print "Enter your favorite programming language: "

line = gets

if (line.match?(/Python|Javascript/))
  new_line = line.sub(/Python/, "Ruby")
  puts "No Your favorite programming language is Ruby."
elsif (line.match?("Ruby"))
  puts "That's my favorite too!"
else
  new_line = line.gsub(/Java/, "Ruby")
  puts "Ruby"
end