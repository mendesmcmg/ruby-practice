# frozen_string_literal: true

require_relative 'auth_crud'

users = [
  { username: 'clara', password: '1234' },
  { username: 'heisenberg', password: 'password5' },
  { username: 'arya', password: 'valar' }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
