# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
puts "Destruction des seeds"
User.destroy_all

puts "Creation user renters..."
user_renter1 = User.create!(name: 'Jack', email: 'jack@gmail.com', password: 'jacksparrow')
user_renter2 = User.create!(name: 'Harry', email: 'Harry@gmail.com', password: 'harrypotter')
user_renter3 = User.create!(name: 'Jammy', email: 'jammy@gmail.com', password: 'jammyscience')
user_renter4 = User.create!(name: 'Wagon', email: 'lewagon@gmail.com', password: 'lewagon')
user_renter5 = User.create!(name: 'Anakin', email: 'anakin@gmail.com', password: 'anakinskywalker')
user_renter6 = User.create!(name: 'Georges', email: 'georges@gmail.com', password: 'georgesdelajungle')
user_renter7 = User.create!(name: 'Roger', email: 'roger@gmail.com', password: 'rogerrabbit')
user_renter8 = User.create!(name: 'Michel', email: 'michel@gmail.com', password: 'papymichel')
puts "...finished !"

puts "Creation user owners..."
user_owner1 = User.create!(name: 'Daniel', email: 'daniel@gmail.com', password: 'jackdaniel')
user_owner2 = User.create!(name: 'Jean', email: 'jean@gmail.com', password: 'jeanjack')
user_owner3 = User.create!(name: 'Gertrude', email: 'gertrudem@gmail.com', password: 'gertrudelapoule')
user_owner4 = User.create!(name: 'Micheline', email: 'micheline61@gmail.com', password: 'michelinecamembert')
puts "...finished !"

puts "Creation spaceships..."
spaceship1 = Spaceship.create!(name: 'Black Pearl', price: 20_000, address: "5 rue de l'Atlantique, Marseille, FRANCE",
  seats: 15, energy: 'diesel', gravity: true, user: user_owner1, weapons: "4 lasguns",
  description: "Perfect for less-than-3-days-stays.")
file = URI.open('https://1.bp.blogspot.com/-C8AvZ63at9o/VFdz0NkXpcI/AAAAAAAAADg/0WRKdqZklGc/s1600/Interstellar+space+shuttle+(3).jpg')
spaceship1.photos.attach(io: file, filename: 'Interstellar+space+shuttle+(3).jpg', content_type: 'image/jpg')
spaceship1.save

spaceship2 = Spaceship.create!(name: 'Nimbus 2000', price: 2_100, address: "10 Sky Road, Hogsmead, ENGLAND",
  seats: 2, energy: 'unknown', gravity: true, user: user_owner2, weapons: "none",
  description: "For those who want to fly close to the stars (but not too close anyway).")
file = URI.open('https://p8.storage.canalblog.com/82/08/1154220/120898053_o.jpg')
spaceship2.photos.attach(io: file, filename: '120898053_o.jpg', content_type: 'image/jpg')
spaceship2.save

spaceship3 = Spaceship.create!(name: 'Nautilus', price: 3_900, address: "1 avenue de l'Atlantide, Brest, FRANCE",
  seats: 112, energy: 'kerosene', gravity: false, user: user_owner4, weapons: "16 lasguns, 1 energy shield, and 1 tank",
  description: "Nautilus is THE spaceship you want to rent. Live like an astronaut for a short or long stay, experience gravity, and spacewalks (additional cost).")
file = URI.open('https://i.pinimg.com/736x/b1/19/07/b119070210c0194d3f263c054235fa5a.jpg')
spaceship3.photos.attach(io: file, filename: 'b119070210c0194d3f263c054235fa5a.jpg', content_type: 'image/jpg')
spaceship3.save

spaceship4 = Spaceship.create!(name: 'Le Wagon # 1027', price: 2_500, address: "10 passage de la poule noire, Nantes, FRANCE",
  seats: 22, energy: 'diesel', weapons: "one potato-launcher", gravity: false, user: user_owner1,
  description: "Discover space with your child's eyes as if you were on board the 'Magic Bus'. Not recommended for stays longer than 48 hours.")
file = URI.open('https://themartinsamericanadventure.com/wp-content/uploads/2015/01/space-shuttle-bus.jpg')
spaceship4.photos.attach(io: file, filename: 'space-shuttle-bus.jpg', content_type: 'image/jpg')
spaceship4.save

spaceship5 = Spaceship.create!(name: 'Faucon millenium', price: 65_000, address: "666th Clown Street, Washington DC, USA",
  seats: 80, energy: 'nuclear', weapons: "twin ion-powered cannons, anti-comet rockets, energy shield", gravity: true, user: user_owner2,
  description: "One of the largest vessels in existence, fully equipped, capable of accommodating large groups of people for short or long stays. Complete until June 2023.")
file = URI.open('https://img.gocar.be/v7/_cloud_wordpress_/2018/05/millenium-falcon.jpg')
spaceship5.photos.attach(io: file, filename: 'millenium-falcon.jpg', content_type: 'image/jpg')
spaceship5.save

spaceship6 = Spaceship.create!(name: 'Star Trek Enterprise', price: 15_000, address: "10th Downing Street, London, ENGLAND",
  seats: 45, energy: 'solar', weapons: "10 laser-cannons, 4 anti-comet rockets", gravity: false, user: user_owner3,
  description: "Star Trek fans will be thrilled to be able to navigate space aboard the USS Enterprise. Guaranteed anti-gravity experience (switch possible).")
file = URI.open('https://p.turbosquid.com/ts-thumb/Cb/iTEXjb/5uW9tukG/star_trek_enterprise_ncc_1701_0001/jpg/1475671723/600x600/fit_q87/1378b1846fec27961f0a347cd71fc48609f06f06/star_trek_enterprise_ncc_1701_0001.jpg')
spaceship6.photos.attach(io: file, filename: 'star_trek_enterprise_ncc_1701_0001.jpg', content_type: 'image/jpg')
spaceship6.save

spaceship7 = Spaceship.create!(name: 'The Milano', price: 7_000, address: "31 Prima Donna, Milan, ITALY",
  seats: 20, energy: 'solar', weapons: "4 laser-cannons, 1 energy shield, 2 anti-comet rockets, 2 lasguns", gravity: false, user: user_owner4,
  description: "Board the spaceship of the famous Peter Quill, discover the galaxy-mercenary life, and much more. No pets allowed.")
file = URI.open('https://i.pinimg.com/originals/42/ee/2f/42ee2f70787b7fe37d6a3e66d2351e81.jpg')
spaceship7.photos.attach(io: file, filename: '42ee2f70787b7fe37d6a3e66d2351e81.jpg', content_type: 'image/jpg')
spaceship7.save

spaceship8 = Spaceship.create!(name: 'Titan', price: 4_999, address: "12 Place de la mairie, Saint-Bonnet-en-Champsaur, FRANCE",
  seats: 14, energy: 'nuclear', weapons: "1 energy shield, 2 solar-cannons", gravity: true, user: user_owner1,
  description: "Live space life without hassle, the crew takes care of everything and lets you discover the wonders of the universe while presenting its specificities to you. Perfect for a family stay (from 8 years old).")
file = URI.open('https://i.pinimg.com/736x/1c/35/c7/1c35c71eae33e3e01a8dd949e21792fa--star-ship-sci-fi-art.jpg')
spaceship8.photos.attach(io: file, filename: '1c35c71eae33e3e01a8dd949e21792fa--star-ship-sci-fi-art.jpg', content_type: 'image/jpg')
spaceship8.save

spaceship9 = Spaceship.create!(name: 'Star Destroyer', price: 24_000, address: "Cale de Beautour, Vertou, FRANCE",
  seats: 35, energy: 'kerosene', weapons: "Engineers on Board: Create Unlimited Weapons!", gravity: false, user: user_owner3,
  description: "For long stays only: share the daily life of our teams of researchers, discover new discoveries exclusively, and live the life of an astronaut!")
file = URI.open('https://trustmyscience.com/wp-content/uploads/2019/02/vaisseau-spatial-star-destroyer-star-wars.jpg')
spaceship9.photos.attach(io: file, filename: 'vaisseau-spatial-star-destroyer-star-wars.jpg', content_type: 'image/jpg')
spaceship9.save

spaceship10 = Spaceship.create!(name: 'Ironjet', price: 8_200, address: "Keplerstraße 7, Stuttgart, GERMANY",
  seats: 12, energy: 'bio-diesel', weapons: "none", gravity: true, user: user_owner4,
  description: "Embark on board the Ironjet, a research spaceship, which will make you discover our galaxy and will teach you all you need to know about alien.")
file = URI.open('https://www.turbo.fr/sites/default/files/styles/article_690x405/public/migration/newscast/field_image/000000008036260.jpg?itok=xu8UchbZ')
spaceship10.photos.attach(io: file, filename: '000000008036260.jpg', content_type: 'image/jpg')
spaceship10.save

spaceship11 = Spaceship.create!(name: 'La bulle', price: 1_000, address: "10 Avenue du Général de Gaulle, Vimoutiers, FRANCE",
  seats: 25, energy: 'coal', weapons: "none", gravity: false, user: user_owner2,
  description: "Do you want to live a unique experience, discover anti-gravity and see what our planet looks like from the moon? Book your stay now! Round trip guaranteed during the day : Departure at 7:00 a.m., return at 8:00 p.m. (meals included on board).")
file = URI.open('https://www.netcost-security.fr/wp-content/uploads/2021/06/1625086861_Le-calendrier-astronomique-de-juillet-a-un-nouveau-module-sur-758x341.jpg')
spaceship11.photos.attach(io: file, filename: '1625086861_Le-calendrier-astronomique-de-juillet-a-un-nouveau-module-sur-758x341.jpg', content_type: 'image/jpg')
spaceship11.save

spaceship12 = Spaceship.create!(name: 'The Explorer', price: 10_000, address: "22 Rue Nouvelle, Soupir, FRANCE",
  seats: 70, energy: 'kerosene', weapons: "none", gravity: false, user: user_owner2,
  description: "Privatize your spaceship for all your private events, and give your loved ones a unique experience! The Explorer is fully equipped (sauna, jacuzzi, billiards...). Our team can also assist you in organizing your event (additional cost), do not hesitate to contact us.")
file = URI.open('https://trustmyscience.com/wp-content/uploads/2022/02/vaisseau-spatial-starship-inquiete-competiteurs-couv.png')
spaceship12.photos.attach(io: file, filename: 'vaisseau-spatial-starship-inquiete-competiteurs-couv.png', content_type: 'image/jpg')
spaceship12.save

puts "...finished !"

puts "Creation bookings..."
booking = Booking.create!(booking_start_date: '2022-12-20', booking_end_date: '2022-12-31', total_price: 20_000, user: user_renter1, spaceship: spaceship1, validated: 'confirmed')
booking = Booking.create!(booking_start_date: '2022-12-25', booking_end_date: '2023-01-2', total_price: 2_100, user: user_renter2, spaceship: spaceship2, validated: 'confirmed')
booking = Booking.create!(booking_start_date: '2023-01-20', booking_end_date: '2023-02-01', total_price: 3_000, user: user_renter3, spaceship: spaceship3, validated: 'declined')
booking = Booking.create!(booking_start_date: '2023-02-10', booking_end_date: '2023-02-15', total_price: 3_000, user: user_renter4, spaceship: spaceship4, validated: 'pending')
booking = Booking.create!(booking_start_date: '2023-03-01', booking_end_date: '2023-03-31', total_price: 65_000, user: user_renter5, spaceship: spaceship5, validated: 'pending')
puts "...finished !"
puts "All done!"
