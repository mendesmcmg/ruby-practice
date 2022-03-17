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

class Student
  attr_accessor :name, :last_name, :email, :username, :password

	def initialize(firstname, lastname, username, email, password)
		@name = firstname
		@last_name = lastname
		@username = username
		@email = email
		@password = password
	end

	def to_s
		"Hi, #{@name} #{@last_name}"
		"First name: #{@name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
	end
end

leia = Student.new("leia", "organa", "leia", "leia@email", "123")
puts leia
luke = Student.new("luke", "skywalker", "luke", "luke@email", "123")
puts luke