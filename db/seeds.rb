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

puts "making 2 partners"
partner1 = Partner.new(name: "Gillian", birthday: Date.new(1980,01,01), phone_number: "1234567", email: "c@gmail.com", location: "Montreal")
partner1.photo.attach(io: URI.open("https://corporate.zalando.com/sites/default/files/styles/fullimage_extra_big/public/media/Zalando%20SE_brand%20partner_teaser%20image.jpg"), filename: "partner1.jpg", content_type: "image/jpg")
partner1.user = user1
partner1.save!

partner2 = Partner.new(name: "April", birthday: Date.new(1990,01,01), phone_number: "#######", email: "d@gmail.com", location: "Montréal")
partner2.user = user2
partner2.save!

puts "making 2 ingenious inspos"
inspo1 = Inspo.new(name: "Elephant riding in Nepal", genre: "date", location: "Nepal", content: "Elephant riding in Nepal", cost: 50.0)
inspo1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1498712067384-01239c6b377c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80"), filename: "inspo1.jpg", content_type: "image/jpg")
inspo1.save!

inspo2 = Inspo.new(name: "Snorkeling in Peru", genre: "gift", location: "Peru", content: "Snorkeling trip to Peru", cost: 500.0)
inspo2.photo.attach(io: URI.open("https://hips.hearstapps.com/hmg-prod/images/wh-sexting-1603812586.png?crop=0.49988000959923207xw:1xh;center,top&resize=1200:*"), filename: "inspo2.png", content_type: "image/png")
inspo2.save!

puts "eventing some keywords"
keyword1 = Keyword.new(name: "elephant")
keyword1.photo.attach(io: URI.open("https://m.media-amazon.com/images/I/51w7hUbUogL._AC_.jpg"), filename: "elephant.jpg", content_type: "image/jpg")
keyword1.save!

keyword2 = Keyword.new(name: "flowers")
keyword2.photo.attach(io: URI.open("https://m.media-amazon.com/images/I/71xK85Lm0rL._AC_SL1500_.jpg"), filename: "flowers.jpg", content_type: "image/jpg")
keyword2.save!

puts "making 2 events"
event1 = Event.new(date: Time.new(2021), content: "text")
event1.partner = partner1
event1.inspo = inspo1
event1.save!

event2 = Event.new(date: Time.new(2023), content: "text")
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
