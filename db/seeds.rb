# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roy = User.create(user_name: 'royFloresNyc', first_name: 'Roy', last_name: 'Flores', email_address: 'someEmail@gmail.com', password: 'test', password_confirmation: 'test', image_url: 'http://www.royflores.net/uploads/1/0/7/6/10766844/7171871_orig.jpg')
david = User.create(user_name: 'EeewDavid', first_name: 'David', last_name: 'Kirsch', email_address: 'email@gmail.com', password: 'test', password_confirmation: 'test')

capul = City.create(city_name: 'Capul', country_name: 'Philippines', description: 'Capul, Northern Samar, Philippines', place_id: 'ChIJF3NvKeZJpzMRh6YzIYuS_2c')
la = City.create(city_name: 'Los Angeles', country_name: 'USA', description: 'Los Angeles, California, USA', place_id: 'ChIJE9on3F3HwoAR9AhGJW_fL-I')

Itinerary.create(user: roy, city: capul)
Itinerary.create(user: roy, city: la)