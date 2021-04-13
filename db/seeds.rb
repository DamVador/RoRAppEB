# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Faker::Config.locale=:fr
User.destroy_all
User.reset_pk_sequence
Event.destroy_all
Event.reset_pk_sequence
Participation.destroy_all
Participation.reset_pk_sequence

10.times do 
    User.create!(
        email: Faker::Internet.username(specifier: 5..8) + "@yopmail.com",
        first_name:Faker::Name.first_name,
        last_name:Faker::Name.last_name
  )
end

puts "10 Users have been created"