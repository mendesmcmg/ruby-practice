# frozen_string_literal: true

# Simple calculator with choice of operation

def multiplication(num_1, num_2)
  puts "\nYou chose to multiply\nThe multiplication equals #{num_1 * num_2}"
end

def addition(num_1, num_2)
  puts "\nYou chose to add\nThe addition equals #{num_1 + num_2}"
end

def subtraction(num_1, num_2)
  puts "\nYou chose to subtract \nThe subtraction equals #{num_1 - num_2}"
end

def division(num_1, num_2)
  puts "\nYou chose to divide \nThe division equals #{num_1 / num_2} with mod of #{num_1 % num_2}"
end

puts 'Simple calculator'
25.times { print '-' }
puts "\nGimme the number"
num_1 = gets.chomp.to_i
puts 'Gimme the other number'
num_2 = gets.chomp.to_i
puts 'Now choose your operation: 1 for multiplication, 2 for addition, 3 for subtraction, 4 for division with module'
operation = gets.chomp
25.times { print '-' }

case operation
when '1'
  multiplication(num_1, num_2)
when '2'
  addition(num_1, num_2)
when '3'
  subtraction(num_1, num_2)
when '4'
  division(num_1, num_2)
else
  puts 'Invalid entry'
end
