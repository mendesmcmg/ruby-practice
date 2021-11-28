# String introduction

puts "Gimme your first name"
first = gets.chomp
puts "Gimme your last name"
last = gets.chomp
full = "#{first} #{last}"
count = first + last
puts "Your full name is #{full}"
puts "Your name reversed is #{full.reverse}"
puts "Your name has #{count.length} characters in it"