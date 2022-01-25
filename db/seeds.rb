# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Clean DB
Movie.destroy_all
puts 'DB Cleanup'


5.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraph,
    poster_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ['movie']),
    rating: Faker::Number.within(range: 1..10)
  )
end
puts 'DB Seed Create'
