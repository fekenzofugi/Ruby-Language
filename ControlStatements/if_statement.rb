today = Time.now
puts today

if today.saturday?
  puts "Let's go running!"
elsif today.sunday?
  puts "Relax"
else
  puts "Study"
end