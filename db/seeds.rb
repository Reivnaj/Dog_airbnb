# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
City.destroy_all
Dog.destroy_all
DogSitter.destroy_all
Stroll.destroy_all

100.times do
  City.create(city_name: Faker::Address.city)
  Dog.create(name: Faker::Creature::Dog.name, city_id: City.ids.sample)
  DogSitter.create(name: Faker::Name.first_name, city_id: City.ids.sample)
  Stroll.create(date: Faker::Date.in_date_period, city_id: City.ids.sample, dog_sitter_id: DogSitter.ids.sample)
  Booking.create(dog_id: Dog.ids.sample, stroll_id: Stroll.ids.sample)
end
