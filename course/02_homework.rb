puts "Simple calculator"
25.times { print "-" }
puts "\nGimme the number"
num_1 = gets.chomp.to_i
puts "Gimme the other number"
num_2 = gets.chomp.to_i
25.times { print "-" }
puts "\nThe multiplication equals #{num_1 * num_2}"
puts "\nThe addition equals #{num_1 + num_2}"
puts "\nThe subtraction equals #{num_1 - num_2}"
puts "\nThe division equals #{num_1 / num_2} with mod of #{num_1 % num_2}"