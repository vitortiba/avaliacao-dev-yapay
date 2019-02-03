# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

case Rails.env
when "development"
  User.create(name:'admin',
              cpf:'11111111111',
              email:'admin@teste.com',
              password:'123456',
              password_confirmation: '123456')
when "production"
  User.create(name:'ADMIN',
              cpf:'11111111111',
              email:'admin@admin.com',
              password:'mudar123',
              password_confirmation: 'mudar123')
end

