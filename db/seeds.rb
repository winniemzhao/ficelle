require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "destroying all this crap"
InspoKeyword.destroy_all
Preference.destroy_all
Event.destroy_all
Keyword.destroy_all
Inspo.destroy_all
Partner.destroy_all
User.destroy_all

puts "making two users"
user1 = User.new(email: "a@gmail.com", password: "123456", name: "John", phone_number: "1234567890", location: "Montreal")
user1.photo.attach(io: URI.open("https://www.computerhope.com/jargon/g/guest-user.jpg"), filename: "user.jpg", content_type: "image/jpg")
user1.save!

user2 = User.create!(email: "b@gmail.com", password: "123456", name: "Michael", phone_number: "(514) 458-9946", location: "Toronto")

puts "making 2 partners for user1"
partner1 = Partner.new(name: "Gillian", birthday: Date.new(1980,01,01), phone_number: "1234567", email: "c@gmail.com", location: "Montreal")
partner1.photo.attach(io: URI.open("https://corporate.zalando.com/sites/default/files/styles/fullimage_extra_big/public/media/Zalando%20SE_brand%20partner_teaser%20image.jpg"), filename: "partner1.jpg", content_type: "image/jpg")
partner1.user = user1
partner1.save!

partner2 = Partner.new(name: "April", birthday: Date.new(1990,01,01), phone_number: "#######", email: "d@gmail.com", location: "Montréal")
partner2.user = user2
partner2.save!

puts "making 2 ingenious inspos"
inspo1 = Inspo.create!(name: "Elephant riding in Nepal", genre: "date")
inspo2 = Inspo.create!(name: "Snorkeling trip to Peru", genre: "gift")

puts "eventing some keywords"
keyword1 = Keyword.create!(name: "elephant")
keyword2 = Keyword.create!(name: "flowers")

puts "making 2 events"
event1 = Event.new(date: Time.new(2021), completed: true)
event1.partner = partner1
event1.inspo = inspo1
event1.save!

event2 = Event.new(date: Time.new(2023), location: "Montreal")
event2.partner = partner2
event2.inspo = inspo2
event2.save!

puts "making 2 preferences just in case"
preference1 = Preference.new()
preference1.partner = partner1
preference1.keyword = keyword1
preference1.save!

preference2 = Preference.new()
preference2.partner = partner2
preference2.keyword = keyword2
preference2.save!

puts "making 2 inspo_keywords as well, just in case"
inspo_keyword1 = InspoKeyword.new()
inspo_keyword1.inspo = inspo1
inspo_keyword1.keyword = keyword1
inspo_keyword1.save!

inspo_keyword2 = InspoKeyword.new()
inspo_keyword2.inspo = inspo2
inspo_keyword2.keyword = keyword2
inspo_keyword2.save!

puts "all done"
