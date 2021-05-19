# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
pizza_w = { name: 'Pizza W', address: 'Fuldastrasse, Berlin', phone_number: '555-1234', category: 'italian' }
vietbowl = { name: 'VietBowl', address: 'Hermanstrasse, Berlin', phone_number: '555-2345', category: 'chinese' }
transit = { name: 'Transit', address: 'Kottbusserdamm, Berlin', phone_number: '555-3456', category: 'belgian' }
sushi_cube = { name: 'Sushi Cube', address: 'Zossenerstrase, Berlin', phone_number: '555-4567', category: 'japanese' }
umami = { name: 'Umami', address: 'Bergmannstrasse, Berlin', phone_number: '555-5678', category: 'chinese' }

[pizza_w, vietbowl, transit, sushi_cube, umami].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
