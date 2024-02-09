# frozen_string_literal: true

require_relative 'auth_crud'

class Student
  include Crud
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

student1 = Student.new('Clara', 'Oswald', 'claraoswald@email', 'claraoswald', 'senha123')
hashed_password = student1.create_hash_digest(student1.password)
puts hashed_password
