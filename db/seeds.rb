# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

coordinator = User.create!(
  email: 'coordinator@user',
  password: '123456',
  admin: true
)

respondent = User.create!(
  email: 'respondent@user',
  password: '123456',
  admin: false
)

puts 'Usuários Admin e Comum criados com sucesso!'
