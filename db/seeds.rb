# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
tata_renee = { name: 'Chez Tata Renée', address: '4 Rue de Buci', phone_number: '01 40 27 60 00', category: 'chinese' }
tonton_gege = { name: 'Chez Tonton Gégé', address: '46 Avenue de Wagram', phone_number: '01 42 76 33 97', category: 'italian' }
tata_yvette = { name: 'Chez Tata Yvette', address: '11 Avenue Mac-Mahon', phone_number: '01 48 03 49 92', category: 'japanese' }
tonton_bernard = { name: 'Chez Tonton Bernard', address: '1 Chaussee de la Muette', phone_number: '01 48 87 27 10', category: 'japanese' }
mcdo = { name: 'McDo', address: '60 Rue des Francs Bourgeois', phone_number: '01 53 76 44 44', category: 'french' }

[tata_renee, tonton_gege, tata_yvette, tonton_bernard, mcdo].each do |attributes|
  restaurant = Restaurant.create(attributes)
  puts "Created #{restaurant.name}"
end

restaurants = Restaurant.all

restaurants.each do |restaurant|
  Review.create(rating: rand(0..5), content: 'very cool', restaurant_id: restaurant.id)
end
puts 'Finished!'
