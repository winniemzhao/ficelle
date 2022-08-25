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

puts "making ingenious inspos"
inspo1 = Inspo.new(name: "Elephant riding in Nepal", genre: "date", location: "Nepal", content: "Elephant riding in Nepal", cost: 50.0)
inspo1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1498712067384-01239c6b377c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80"), filename: "inspo1.jpg", content_type: "image/avif")
inspo1.save!

inspo2 = Inspo.new(name: "Snorkeling in Peru", genre: "gift", location: "Peru", content: "Snorkeling trip to Peru", cost: 500.0)
inspo2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1473455811944-fdd1b0f282f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"), filename: "inspo2.jpg", content_type: "image/avif")
inspo2.save!

inspo3 = Inspo.new(name: "Good Morning Text 💬", genre: "text", content: "good mornin sunshiiine ❤️ ❤️")
inspo3.photo.attach(io: URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sunrise-quotes-21-1586892331.jpg"), filename: "inspo3.jpg", content_type: "image/jpg")
inspo3.save!

inspo4 = Inspo.new(name: "Bouquet of flowers", genre: "gift", content: "A mix of multicolor standard and garden roses", cost: 55.0)
inspo4.photo.attach(io: URI.open("https://pyxis.nymag.com/v1/imgs/e8e/c68/83930d962edd0049116885bd6033c8492e.2x.rhorizontal.w600.jpg"), filename: "inspo4.jpg", content_type: "image/avif")
inspo4.save!

inspo5 = Inspo.new(name: "Mojito & Margarita", genre: "date", location: "3127 Rue Masson, Montreal, Quebec", content: "Amazing Mexican & Cuban restaurant in the Vieux Rosemont", cost: 75.0)
inspo5.photo.attach(io: URI.open("https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/1a/ee/08/photo0jpg.jpg"), filename: "inspo5.jpg", content_type: "image/jpg")
inspo5.save!

inspo6 = Inspo.new(name: "Cat Memes 💬 ", genre: "text", content: "SO CUUUUUTE")
inspo6.photo.attach(io: URI.open("https://i.pinimg.com/originals/e2/1e/c3/e21ec38a960ed856a9cbc2950654818c.jpg"), filename: "inspo6.jpg", content_type: "image/jpg")
inspo6.save!

puts "eventing some keywords"
keyword1 = Keyword.new(name: "elephant")
keyword1.photo.attach(io: URI.open("https://m.media-amazon.com/images/I/51w7hUbUogL._AC_.jpg"), filename: "elephant.jpg", content_type: "image/jpg")
keyword1.save!

keyword2 = Keyword.new(name: "flowers")
keyword2.photo.attach(io: URI.open("https://m.media-amazon.com/images/I/71xK85Lm0rL._AC_SL1500_.jpg"), filename: "flowers.jpg", content_type: "image/jpg")
keyword2.save!

keyword3 = Keyword.new(name: "tacos")
keyword3.photo.attach(io: URI.open("https://images.unsplash.com/photo-1598763773372-127da881eb84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"), filename: "tacos.jpg", content_type: "image/jpg")
keyword3.save!

keyword4 = Keyword.new(name: "hiking")
keyword4.photo.attach(io: URI.open("https://images.unsplash.com/photo-1551632811-561732d1e306?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"), filename: "hiking.jpg", content_type: "image/jpg")
keyword4.save!

keyword5 = Keyword.new(name: "wine")
keyword5.photo.attach(io: URI.open("https://images.unsplash.com/photo-1551632811-561732d1e306?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"), filename: "wine.jpg", content_type: "image/jpg")
keyword5.save!

keyword6 = Keyword.new(name: "art")
keyword6.photo.attach(io: URI.open("https://images.unsplash.com/photo-1545989253-02cc26577f88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"), filename: "art.jpg", content_type: "image/jpg")
keyword6.save!

keyword7 = Keyword.new(name: "books")
keyword7.photo.attach(io: URI.open("https://images.unsplash.com/photo-1535905557558-afc4877a26fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"), filename: "books.jpg", content_type: "image/jpg")
keyword7.save!

keyword8 = Keyword.new(name: "shopping")
keyword8.photo.attach(io: URI.open("https://images.unsplash.com/photo-1561715276-a2d087060f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"), filename: "shopping.jpg", content_type: "image/jpg")
keyword8.save!

keyword9 = Keyword.new(name: "coffee")
keyword9.photo.attach(io: URI.open("https://images.unsplash.com/photo-1596018589855-e9a2a91f687f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1925&q=80"), filename: "coffee.jpg", content_type: "image/jpg")
keyword9.save!

keyword10 = Keyword.new(name: "sushi")
keyword10.photo.attach(io: URI.open("https://images.unsplash.com/photo-1584583570840-0a3d88497593?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=927&q=80"), filename: "sushi.jpg", content_type: "image/jpg")
keyword10.save!

keyword11 = Keyword.new(name: "cats")
keyword11.photo.attach(io: URI.open("https://images.unsplash.com/photo-1572252821143-035a024857ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80"), filename: "cats.jpg", content_type: "image/jpg")
keyword11.save!

keyword12 = Keyword.new(name: "meditation")
keyword12.photo.attach(io: URI.open("https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80"), filename: "meditation.jpg", content_type: "image/jpg")
keyword12.save!

puts "making 2 events"
event1 = Event.new(date: Time.new(2021), content: "text")
event1.partner = partner1
event1.inspo = inspo1
event1.save!

event2 = Event.new(date: Time.new(2023), content: "text")
event2.partner = partner2
event2.inspo = inspo2
event2.save!

event3 = Event.new(date: Time.new(2023), content: "text")
event3.partner = partner2
event3.inspo = inspo5
event3.save!

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
