require 'bundler/inline'

gemfile true do
	source 'https://rubygems.org'
	gem 'bcrypt'
end

mypassword = BCrypt::Password.create("mypassword")
puts mypassword.version
puts mypassword.cost
puts mypassword.salt
puts mypassword == 'mypassword'
puts mypassword == 'not my password'

puts mypassword = BCrypt::Password.new("$2a$12$CC/UgGwzLEeXUu/QehJ0y.bsfl57snII50eamyrJhCwHuvKRSA.LC")
puts mypassword == 'mypassword'
puts mypassword == 'not my password'
