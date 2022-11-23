# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
puts "destruction des seeds"
User.destroy_all

puts "creation user renter..."
user_renter1 = User.create!(name: 'Jack', email: 'jack@gmail.com', password: 'jacksparrow')
user_renter2 = User.create!(name: 'Harry', email: 'Harry@gmail.com', password: 'harrypotter')
user_renter3 = User.create!(name: 'Jammy', email: 'jammy@gmail.com', password: 'jammyscience')
user_renter4 = User.create!(name: 'Wagon', email: 'lewagon@gmail.com', password: 'lewagon')
user_renter5 = User.create!(name: 'Anakin', email: 'anakin@gmail.com', password: 'anakinskywalker')
puts "...finished !"

puts "creation user owner..."
user_owner1 = User.create!(name: 'Daniel', email: 'daniel@gmail.com', password: 'jackdaniel')
user_owner2 = User.create!(name: 'Jean', email: 'jean@gmail.com', password: 'jeanjack')
puts "...finished !"

puts "creation spaceship..."
spaceship1 = Spaceship.create!(name: 'Black Pearl', price: 20_000.40, address: "5 rue de l'Atlantique", seats: 15, energy: 'diesel', gravity: true, user: user_owner1,)
file = URI.open('https://1.bp.blogspot.com/-C8AvZ63at9o/VFdz0NkXpcI/AAAAAAAAADg/0WRKdqZklGc/s1600/Interstellar+space+shuttle+(3).jpg')
spaceship1.photos.attach(io: file, filename: 'Interstellar+space+shuttle+(3).jpg', content_type: 'image/jpg')
spaceship1.save

spaceship2 = Spaceship.create!(name: 'Nimbus 2000', price: 2_100.90, address: "10 rue du Ciel", seats: 2, energy: 'diesel', gravity: true, user: user_owner2)
file = URI.open('https://p8.storage.canalblog.com/82/08/1154220/120898053_o.jpg')
spaceship2.photos.attach(io: file, filename: '120898053_o.jpg', content_type: 'image/jpg')
spaceship2.save

spaceship3 = Spaceship.create!(name: 'Nautilus', price: 3_000.50, address: "1 avenue de l'Atlantide", seats: 12, energy: 'diesel', gravity: true, user: user_owner1)
file = URI.open('https://i.pinimg.com/736x/b1/19/07/b119070210c0194d3f263c054235fa5a.jpg')
spaceship3.photos.attach(io: file, filename: 'b119070210c0194d3f263c054235fa5a.jpg', content_type: 'image/jpg')
spaceship3.save

spaceship4 = Spaceship.create!(name: 'Le Wagon # 1027', price: 3_000.50, address: "10 passage de la poule noire", weapons: "lanceur à patate", seats: 27, energy: 'diesel', gravity: false, user: user_owner1)
file = URI.open('https://themartinsamericanadventure.com/wp-content/uploads/2015/01/space-shuttle-bus.jpg')
spaceship4.photos.attach(io: file, filename: 'space-shuttle-bus.jpg', content_type: 'image/jpg')
spaceship4.save

spaceship5 = Spaceship.create!(name: 'Faucon millenium', price: 65_000, address: "7 avenue de l'Espace", weapons: "double canon à propulsion ionique, roquettes anti-comète, bouclier energétique", seats: 5, energy: 'diesel', gravity: true, user: user_owner2)
file = URI.open('https://img.gocar.be/v7/_cloud_wordpress_/2018/05/millenium-falcon.jpg')
spaceship5.photos.attach(io: file, filename: 'millenium-falcon.jpg', content_type: 'image/jpg')
spaceship5.save

puts "...finished !"

puts "creation booking..."
booking = Booking.create!(booking_start_date: '2022-12-20', booking_end_date: '2022-12-31', total_price: 20_000.40, user: user_renter1, spaceship: spaceship1, validated: 'confirmed')
booking = Booking.create!(booking_start_date: '2022-12-25', booking_end_date: '2023-01-2', total_price: 2_100.90, user: user_renter2, spaceship: spaceship2, validated: 'confirmed')
booking = Booking.create!(booking_start_date: '2023-01-20', booking_end_date: '2023-02-01', total_price: 3_000.50, user: user_renter3, spaceship: spaceship3, validated: 'confirmed')
booking = Booking.create!(booking_start_date: '2023-02-10', booking_end_date: '2023-02-15', total_price: 3_000.50, user: user_renter4, spaceship: spaceship4, validated: 'pending')
booking = Booking.create!(booking_start_date: '2023-03-01', booking_end_date: '2023-03-31', total_price: 65_000, user: user_renter5, spaceship: spaceship5, validated: 'pending')
puts "...finished !"
