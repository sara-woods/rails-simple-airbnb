# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all

4.times do
  flat = Flat.new(
    name: Faker::TvShows::Seinfeld.business,
    address: Faker::Address.street_address,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    price_per_night: rand(20..200),
    number_of_guests: rand(1..6)
  )
  flat.save
end
