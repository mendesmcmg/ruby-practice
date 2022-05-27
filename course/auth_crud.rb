require 'bundler/inline'

gemfile true do
	source 'https://rubygems.org'
	gem 'bcrypt'
end

users = [
  { username: "clara", password: "1234"},
  { username: "fred", password: "1111"}, 
  { username: "AJR", password: "good_part" }
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

puts create_secure_users(users)