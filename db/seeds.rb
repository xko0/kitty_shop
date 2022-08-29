# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

images = ["pexels-ihsan-adityawarman-1056251.jpg", "pexels-kelvin-valerio-617278.jpg", "pexels-krysten-merriman-20787.jpg", "pexels-pixabay-104827.jpg", "pexels-pixabay-209037.jpg", "pexels-pixabay-257532.jpg", "pexels-pixabay-416160.jpg", "pexels-septimiu-lupea-669015.jpg", "pexels-tranmautritam-2061057.jpg", "pexels-tranmautritam-2194261.jpg"]

20.times do
  Item.create(title: Faker::Creature::Cat.breed, description: Faker::TvShows::DumbAndDumber.quote, price: rand(5.00..40.00), image_url: images.sample)
end