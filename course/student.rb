# frozen_string_literal: true

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
