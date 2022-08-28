require "open-uri"

puts "Destroying previous instances"
InspoKeyword.destroy_all
Preference.destroy_all
Event.destroy_all
Keyword.destroy_all
Inspo.destroy_all
Partner.destroy_all
User.destroy_all

puts "Creating users"

user1 = User.new(email: "a@gmail.com", password: "123456", name: "John", phone_number: "1234567890", location: "Montreal")
user1.photo.attach(io: URI.open("https://www.computerhope.com/jargon/g/guest-user.jpg"), filename: "user1.jpg", content_type: "image/jpg")
user1.save!

user2 = User.create!(email: "b@gmail.com", password: "123456", name: "Winnie", phone_number: "(514) 458-9946", location: "Toronto")

user3 = User.new(email: "c@gmail.com", password: "123456", name: "Marc", phone_number: "(514) 438-2355", location: "Montreal")
user3.photo.attach(io: URI.open("https://www.computerhope.com/jargon/g/guest-user.jpg"), filename: "user3.jpg", content_type: "image/jpg")
user3.save!

puts "Creating partners"

partner1 = Partner.new(name: "Gillian", birthday: Date.new(1980,01,01), phone_number: "1234567", email: "c@gmail.com", location: "Montreal")
partner1.photo.attach(io: URI.open("https://corporate.zalando.com/sites/default/files/styles/fullimage_extra_big/public/media/Zalando%20SE_brand%20partner_teaser%20image.jpg"), filename: "partner1.jpg", content_type: "image/jpg")
partner1.user = user1
partner1.save!

partner2 = Partner.new(name: "partner2")

puts "Creating inspos"

inspo1 = Inspo.new(name: "Yayoi Kusama art exhibit", genre: "date", location: "Centre PHI, 315 Saint-Paul St W", content: "Yayoi Kusama Exhibit at Centre PHI", cost: 40.0)
inspo1.photo.attach(io: URI.open("https://phi.ca/uploads/_1920xAUTO_crop_center-center_80_none/yayoi-kusama-fondation.jpg"), filename: "inspo1.jpg", content_type: "image/jpg")
inspo1.save!

inspo8 = Inspo.new(name: "Steamy Text 💬", genre: "text", content: "🛏️🚇😮🍾😵")
inspo8.photo.attach(io: URI.open("https://hips.hearstapps.com/hmg-prod/images/wh-sexting-1603812586.png?crop=0.49988000959923207xw:1xh;center,top&resize=1200:*"), filename: "inspo8.png", content_type: "image/png")
inspo8.save!

inspo3 = Inspo.new(name: "Warm coffee with lovely cats", genre: "date", location: "Cafe Chat l'Heureux, 172 Duluth East", content: "Snorkeling trip to Peru", cost: 500.0)
inspo3.photo.attach(io: URI.open("https://cafechatlheureux.com/content/images/cats/Milady.JPG"), filename: "inspo3.jpg", content_type: "image/jpg")
inspo3.save!

inspo2 = Inspo.new(name: "Bouquet of flowers", genre: "gift", content: "A mix of multicolor standard and garden roses", cost: 55.0)
inspo2.photo.attach(io: URI.open("https://pyxis.nymag.com/v1/imgs/e8e/c68/83930d962edd0049116885bd6033c8492e.2x.rhorizontal.w600.jpg"), filename: "inspo7.jpg", content_type: "image/jpg")
inspo2.save!

inspo4 = Inspo.new(name: "Good Morning Text 💬", genre: "text", content: "good mornin sunshiiine ❤️ ❤️")
inspo4.photo.attach(io: URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sunrise-quotes-21-1586892331.jpg"), filename: "inspo4.jpg", content_type: "image/jpg")
inspo4.save!

inspo5 = Inspo.new(name: "Mojito & Margarita", genre: "date", location: "3127 Rue Masson, Montreal, Quebec", content: "Amazing Mexican & Cuban restaurant in the Vieux Rosemont", cost: 75.0)
inspo5.photo.attach(io: URI.open("https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/1a/ee/08/photo0jpg.jpg"), filename: "inspo5.jpg", content_type: "image/jpg")
inspo5.save!

inspo6 = Inspo.new(name: "Cat Memes 💬 ", genre: "text", content: "SO CUUUUUTE")
inspo6.photo.attach(io: URI.open("https://i.pinimg.com/originals/e2/1e/c3/e21ec38a960ed856a9cbc2950654818c.jpg"), filename: "inspo6.jpg", content_type: "image/jpg")
inspo6.save!

inspo7 = Inspo.new(name: "Louis Vuitton bag", genre: "gift", content: "Pochette Metis bag", cost: 2590.0)
inspo7.photo.attach(io: URI.open("https://senmix.com/pictures/product/02/98/pochette-metis-monogram-m44875_1.jpg"), filename: "inspo2.jpg", content_type: "image/jpg")
inspo7.save!

puts "Creating keywords"

keyword1 = Keyword.new(name: "Movies")
keyword1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1620177088260-a9150572baf4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2352&q=80"), filename: "movies.jpg", content_type: "image/jpg")
keyword1.save!

keyword2 = Keyword.new(name: "Flowers")
keyword2.photo.attach(io: URI.open("https://m.media-amazon.com/images/I/71xK85Lm0rL._AC_SL1500_.jpg"), filename: "flowers.jpg", content_type: "image/jpg")
keyword2.save!

keyword3 = Keyword.new(name: "Tacos")
keyword3.photo.attach(io: URI.open("https://images.unsplash.com/photo-1598763773372-127da881eb84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"), filename: "tacos.jpg", content_type: "image/jpg")
keyword3.save!

keyword4 = Keyword.new(name: "Hiking")
keyword4.photo.attach(io: URI.open("https://images.unsplash.com/photo-1551632811-561732d1e306?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"), filename: "hiking.jpg", content_type: "image/jpg")
keyword4.save!

keyword5 = Keyword.new(name: "Wine")
keyword5.photo.attach(io: URI.open("https://images.unsplash.com/photo-1561461056-77634126673a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"), filename: "wine.jpg", content_type: "image/jpg")
keyword5.save!

keyword6 = Keyword.new(name: "Art")
keyword6.photo.attach(io: URI.open("https://images.unsplash.com/photo-1545989253-02cc26577f88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"), filename: "art.jpg", content_type: "image/jpg")
keyword6.save!

keyword7 = Keyword.new(name: "Books")
keyword7.photo.attach(io: URI.open("https://images.unsplash.com/photo-1535905557558-afc4877a26fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"), filename: "books.jpg", content_type: "image/jpg")
keyword7.save!

keyword8 = Keyword.new(name: "Shopping")
keyword8.photo.attach(io: URI.open("https://images.unsplash.com/photo-1561715276-a2d087060f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"), filename: "shopping.jpg", content_type: "image/jpg")
keyword8.save!

keyword9 = Keyword.new(name: "Coffee")
keyword9.photo.attach(io: URI.open("https://images.unsplash.com/photo-1596018589855-e9a2a91f687f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1925&q=80"), filename: "coffee.jpg", content_type: "image/jpg")
keyword9.save!

keyword10 = Keyword.new(name: "Sushi")
keyword10.photo.attach(io: URI.open("https://images.unsplash.com/photo-1584583570840-0a3d88497593?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=927&q=80"), filename: "sushi.jpg", content_type: "image/jpg")
keyword10.save!

keyword11 = Keyword.new(name: "Cats")
keyword11.photo.attach(io: URI.open("https://images.unsplash.com/photo-1572252821143-035a024857ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80"), filename: "cats.jpg", content_type: "image/jpg")
keyword11.save!

keyword12 = Keyword.new(name: "Meditation")
keyword12.photo.attach(io: URI.open("https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80"), filename: "meditation.jpg", content_type: "image/jpg")
keyword12.save!

# keyword13 = Keyword.new(name: "Sports")
# keyword13.photo.attach(io: URI.open("https://images.unsplash.com/photo-1541252260730-0412e8e2108e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1948&q=80"), filename: "sports.jpg", content_type: "image/jpg")
# keyword13.save!

# keyword14 = Keyword.new(name: "Fashion")
# keyword14.photo.attach(io: URI.open("https://images.unsplash.com/photo-1554412933-514a83d2f3c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=372&q=80"), filename: "fashion.jpg", content_type: "image/jpg")
# keyword14.save!

# keyword15 = Keyword.new(name: "Travel")
# keyword15.photo.attach(io: URI.open("https://images.unsplash.com/photo-1488646953014-85cb44e25828?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80"), filename: "travel.jpg", content_type: "image/jpg")
# keyword15.save!

# keyword16 = Keyword.new(name: "Music")
# keyword16.photo.attach(io: URI.open("https://images.unsplash.com/photo-1507838153414-b4b713384a76?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"), filename: "music.jpg", content_type: "image/jpg")
# keyword16.save!

# keyword17 = Keyword.new(name: "Birdwatching")
# keyword17.photo.attach(io: URI.open("https://images.unsplash.com/photo-1515622866498-b50a07b339e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80"), filename: "birdwatching.jpg", content_type: "image/jpg")
# keyword17.save!

# keyword19 = Keyword.new(name: "Carpentry")
# keyword19.photo.attach(io: URI.open("https://images.unsplash.com/photo-1426927308491-6380b6a9936f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"), filename: "carpentry.jpg", content_type: "image/jpg")
# keyword19.save!

# event1 = Event.new(date: Time.new(2022, 8, 29, 19), content: "text")
# event1.partner = partner1
# event1.inspo = inspo1
# event1.save!

# event2 = Event.new(date: Time.new(2022, 8, 31, 15), content: "text")
# event2.partner = partner1
# event2.inspo = inspo2
# event2.save!

# event3 = Event.new(date: Time.new(2022, 9, 2), content: inspo8.content)
# event3.partner = partner1
# event3.inspo = inspo8
# event3.save!

# event4 = Event.new(date: Time.new(2023), content: inspo4.content)
# event4.partner = partner1
# event4.inspo = inspo4
# event4.save!

# event5 = Event.new(date: Time.new(2023), content: "text")
# event5.partner = partner1
# event5.inspo = inspo5
# event5.save!

# event6 = Event.new(date: Time.new(2023), content: inspo6.content)
# event6.partner = partner1
# event6.inspo = inspo6
# event6.save!

puts "Done"
