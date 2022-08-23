# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "destroying all this crap"
User.destroy_all

puts "making two users"
user1 = User.create!(email: "a@gmail.com", password: "123456", name: "John", phone_number: "1234567890", location: "Montreal")

user2 = User.create!(email: "b@gmail.com", password: "123456", name: "Michael", phone_number: "(514) 458-9946", location: "Toronto")

puts "making 2 partners for user1"
partner1 = Partner.new(name: "Gillian", birthday: Date.new(1980,01,01), phone_number: "1234567", email: "c@gmail.com", location: "Montreal")
partner1.user = user1
partner1.save!

partner2 = Partner.new(name: "April", birthday: Date.new(1990,01,01), phone_number: "#######", email: "d@gmail.com", location: "Montréal")
partner2.user = user2
partner2.save!

puts "making 2 ingenious inspos"
inspo1 = Inspo.create!(name: "Elephant riding in Nepal", genre: "date")
