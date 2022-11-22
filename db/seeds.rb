# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



Puts "Deleting all...."
Bot.destroy_all

Puts "Creating bots...."

Bot.create(name: "Rocky", description: "Lorem ipsum", price: "5", rating: 1)
Bot.create(name: "Bob", description: "Lorem ipsum", price: "4", rating: 4 )
Bot.create(name: "Pierre", description: "Lorem ipsum", price: "3", rating: 1)
