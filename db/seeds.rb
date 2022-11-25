# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
puts 'Seed: Deleting existing records...'

Booking.destroy_all
Bot.destroy_all
User.destroy_all

user = User.create!(email: "kev.coutellier@gmail.com", password: "password", owner: false)
user2 = User.create!(email: "dianaspieser@gmail.com", password: "password", owner: false)
user3 = User.create!(email: "teddymuller@gmail.com", password: "password", owner: false)
user4 = User.create!(email: "julien@gmail.com", password: "password", owner: false)
user5 = User.create!(email: "morgane@gmail.com", password: "password", owner: false)
user6 = User.create!(email: "louis@gmail.com", password: "password", owner: false)
user7 = User.create!(email: "alexia@gmail.com", password: "password", owner: false)





file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1669128191/macon_asqthg.jpg")
bot = Bot.new(name: "Maçon", description: "Ce robot à la conception singulière est l'atout ideal pour tout travaux de maçonnerie, livré avec sa truelle il saura effectuer les taches les plus compliquées.", price: 5, rating: 5, address: "16 Villa Gaudelet, Paris", user: user)
bot.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
bot.save

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1669128191/danceur_alclfo.jpg")
bot = Bot.new(name: "Danceur", description: "Ce robot danceur est programmé pour reproduire tout type de danse, faisant de lui l'atout ideal en terme de divertissement, rendez vos soirées et événement plus animés.", price: 10, rating: 5, address: "36 avenue Beau Site, Nice", user: user2)
bot.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
bot.save

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1669128191/dog_fkqztz.jpg")
bot = Bot.new(name: "Dog", description: "Ce robot chien remplacera votre animal de compagnie, avec beaucoup d'avantages, finit les deuils lorsqu'on perd son animal, plus besoin de le nourrir, il obeit au doigt et à l'oeil ...", price: 10, rating: 5, address: "125 boulevard Haussmann, Paris", user: user3)
bot.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
bot.save

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1669139200/garde_sivupp.jpg")
bot = Bot.new(name: "Garde du corps", description: "Ce robot est formé à toutes les techniques de combat et de protection rapprochée, faisant de lui l'atout parfait pour vous proteger ou proteger un bien, il sait aussi se servir de tout type d'arme faisant de lui un redoutable adversaire.", price: 10, rating: 4, address: "57 Rue de Varenne, Paris", user: user4)
bot.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
bot.save

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1669139200/erica-x_x36vea.webp")
bot = Bot.new(name: "X", description: "Ce robot à la conception originale satisfaira tous vos desirs d'ordre sexuel, formé aux arts du kamasutra et techniques tantriques il se revelera l'atout parfait pour les orgies et autres pratiques -18. Fournit avec lubrifiant. Changement de sexe sur demande.", price: 5, rating: 5, address: "Palais de l'Élysée
  55 rue du Faubourg-Saint-Honoré, Paris", user: user5)
bot.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
bot.save

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1669139199/medecin_hasegc.jpg")
bot = Bot.new(name: "Medecin", description: "Ce robot est capable de diagnostiquer 90% des maladies, en fonction du diagnostique il propose un traitement efficace dans 98% des cas.", price: 5, rating: 5,address: "16 Villa Gaudelet, Paris", user: user6)
bot.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
bot.save

file = URI.open("https://res.cloudinary.com/dygywvyiq/image/upload/v1669139196/petit-copain_vrcd2z.webp")
bot = Bot.new(name: "Petit Ami", description: "Ce robot est idéal pour toute personne celibataire desirant un peu de compagnie, finit les soirées Netflix seul, finit les saint Valentinentre amis celibataire, reservez votre petit(e) ami(e) sans plus tarder.", price: 5, rating: 5, address: "46 Villa Gaudelet, Paris", user: user7)
bot.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
bot.save

puts 'Seed: Finished seeding!'








# Bot.create!(name: "Rocky", description: "Lorem ipsum", price: 5, rating: 1, user: user)
# Bot.create!(name: "Bob", description: "Lorem ipsum", price: "4", rating: 4 )
# Bot.create!(name: "Pierre", description: "Lorem ipsum", price: "3", rating: 1)
