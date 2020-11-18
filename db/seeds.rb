# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
first_flat = { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London W9 1DT',  description: 'A lovely summer feel for this spacious garden flat.
Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3 }
second_flat = { name: 'Stylish House Close To The River', address: '5 River Street London W9 1DT',  description: 'A cool house by the river of babylon.
Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 68, number_of_guests: 2 }
third_flat = { name: 'St Pancras Clock Tower Guest Suite', address: '7 ST Pancras Street London W9 1DT',  description: 'A cool Tower to stay in.
Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 99, number_of_guests: 5 }
fourth_flat = { name: 'Cozy Apartment ', address: '3 Cosy Street London W9 1DT',  description: 'It is a lovely place.
ONe double bedrooms, small kitchen and a beautiful conservatory', price_per_night: 32, number_of_guests: 1 }


[ first_flat, second_flat, third_flat, fourth_flat].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
