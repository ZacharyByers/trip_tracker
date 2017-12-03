# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
2.times do
  Trip.create(
    name: Faker::StarTrek.location
    date: Faker::Date.forward(150)
     )
 end

10.times do
  Location.create(
    name: Faker::Address.city,
    trip_id: Faker::Number.between(0, 2),
  )
 end

10.times do
  Address.create(
    street_address: Faker::Address.street_address
    zip: Faker::Address.zip_code
    location_id: Faker::Number.between(1, 10)
  )
 end
  