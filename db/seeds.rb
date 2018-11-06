# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Vehicle.destroy_all

  5.times do Vehicle.create!(driver: Faker::Friends.character, make_and_model: Faker::Vehicle.make_and_model, year: Faker::Vehicle.year, color: Faker::Vehicle.color, door_count: Faker::Vehicle.door_count, transmission: Faker::Vehicle.transmission)

end
