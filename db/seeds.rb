# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
Bot.destroy_all
User.destroy_all

user = User.create!(email: "kev.coutellier@gmail.com", password: "password", owner: false)
user2 = User.create!(email: "dianaspieser@gmail.com", password: "password", owner: false)
user3 = User.create!(email: "teddymuller@gmail.com", password: "password", owner: false)

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1669128191/macon_asqthg.jpg")
bot = Bot.new(name: "Teddy", description: "Le beau", price: 5, rating: 5, user: user)
bot.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
bot.save

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1669128191/danceur_alclfo.jpg")
bot = Bot.new(name: "Diana", description: "La bulgare", price: 10, rating: 5, user: user2)
bot.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
bot.save

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1669128191/dog_fkqztz.jpg")
bot = Bot.new(name: "Kevin", description: "Le magnifique", price: 10, rating: 5, user: user3)
bot.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
bot.save




# Bot.create!(name: "Rocky", description: "Lorem ipsum", price: 5, rating: 1, user: user)
# Bot.create!(name: "Bob", description: "Lorem ipsum", price: "4", rating: 4 )
# Bot.create!(name: "Pierre", description: "Lorem ipsum", price: "3", rating: 1)
