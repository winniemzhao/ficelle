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

user1 = User.new(email: "sarahlfulham@gmail.com", password: "123456", name: "John", phone_number: "1234567890", location: "Montreal")
user_file1 = URI.open("https://www.computerhope.com/jargon/g/guest-user.jpg")
user1.photo.attach(io: user_file1, filename: "user1.jpg", content_type: "image/jpg")
user1.save!

user2 = User.create!(email: "winniemaizhao@gmail.com", password: "123456", name: "Winnie", phone_number: "(514) 589-9046", location: "Toronto")

user3 = User.new(email: "sarahlfulham+1@gmail.com", password: "123456", name: "Marc", phone_number: "(514) 438-2355", location: "Montreal")
user_file3 = URI.open("https://www.computerhope.com/jargon/g/guest-user.jpg")
user3.photo.attach(io: user_file3, filename: "user3.jpg", content_type: "image/jpg")
user3.save!

puts "Creating partners"

partner1 = Partner.new(name: "Gillian", birthday: Date.new(1980,01,01), phone_number: "1234567", email: "c@gmail.com", location: "Montreal")
partner_file1 = URI.open("https://corporate.zalando.com/sites/default/files/styles/fullimage_extra_big/public/media/Zalando%20SE_brand%20partner_teaser%20image.jpg")
partner1.photo.attach(io: partner_file1, filename: "partner1.jpg", content_type: "image/jpg")
partner1.user = user1
partner1.save!

# partner2 = Partner.new(name: "partner2")

puts "Creating inspos"

inspo1 = Inspo.new(name: "Yayoi Kusama Art Exhibit", genre: "date", location: "Centre PHI, 315 Saint-Paul St W", content: "Yayoi Kusama Exhibit at Centre PHI", cost: 40.00)
file1 = URI.open("https://phi.ca/uploads/_1920xAUTO_crop_center-center_80_none/yayoi-kusama-fondation.jpg")
inspo1.photo.attach(io: file1, filename: "inspo1.jpg", content_type: "image/jpg")
inspo1.save!

inspo2 = Inspo.new(name: "Bouquet of Flowers", genre: "gift", content: "A mix of multicolor standard and garden roses", cost: 55.00)
file2 = URI.open("https://pyxis.nymag.com/v1/imgs/e8e/c68/83930d962edd0049116885bd6033c8492e.2x.rhorizontal.w600.jpg")
inspo2.photo.attach(io: file2, filename: "inspo7.jpg", content_type: "image/jpg")
inspo2.save!

inspo3 = Inspo.new(name: "Cat Cafe", genre: "date", location: "Cafe Chat l'Heureux, 172 Duluth East", content: "At Café Chat L'Heureux!", cost: 500.00)
file3 = URI.open("https://cafechatlheureux.com/content/images/cats/Milady.JPG")
inspo3.photo.attach(io: file3, filename: "inspo3.jpg", content_type: "image/jpg")
inspo3.save!

inspo4 = Inspo.new(name: "Good Morning Text", genre: "text", content: "good mornin sunshiiine ❤️ ❤️")
file4 = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sunrise-quotes-21-1586892331.jpg")
inspo4.photo.attach(io: file4, filename: "inspo4.jpg", content_type: "image/jpg")
inspo4.save!

inspo5 = Inspo.new(name: "Mojitos & Margaritas", genre: "date", location: "3127 Rue Masson, Montreal, Quebec", content: "Amazing Mexican & Cuban restaurant in the Vieux Rosemont", cost: 75.00)
file5 = URI.open("https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/1a/ee/08/photo0jpg.jpg")
inspo5.photo.attach(io: file5, filename: "inspo5.jpg", content_type: "image/jpg")
inspo5.save!

inspo6 = Inspo.new(name: "Cat Memes", genre: "text", content: "SO CUUUUUTE")
file6 = URI.open("https://i.pinimg.com/originals/e2/1e/c3/e21ec38a960ed856a9cbc2950654818c.jpg")
inspo6.photo.attach(io: file6, filename: "inspo6.jpg", content_type: "image/jpg")
inspo6.save!

inspo7 = Inspo.new(name: "Louis Vuitton Bag", genre: "gift", content: "Pochette Metis bag", cost: 2590.00)
file7 = URI.open("https://senmix.com/pictures/product/02/98/pochette-metis-monogram-m44875_1.jpg")
inspo7.photo.attach(io: file7, filename: "inspo2.jpg", content_type: "image/jpg")
inspo7.save!

inspo8 = Inspo.new(name: "Steamy Text", genre: "text", content: "🛏️🚇😮🍾😵")
file8 = URI.open("https://hips.hearstapps.com/hmg-prod/images/wh-sexting-1603812586.png?crop=0.49988000959923207xw:1xh;center,top&resize=1200:*")
inspo8.photo.attach(io: file8, filename: "inspo8.png", content_type: "image/png")
inspo8.save!

inspo9 = Inspo.new(name: "Dinner and a Movie", genre: "date", content: "Charm your date with your good taste", cost: 100.00)
file9 = URI.open("https://images.unsplash.com/photo-1440404653325-ab127d49abc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
inspo9.photo.attach(io: file9, filename: "inspo9.jpg", content_type: "image/jpg")
inspo9.save!

inspo10 = Inspo.new(name: "Restaurante Mexicano", genre: "date", location: "1206 Union Ave, Montreal, Quebec H3B 3A7", content: "Escondite Union is a good choice", cost: 200.00)
file10 = URI.open("https://images.unsplash.com/photo-1517638851339-a711cfcf3279?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
inspo10.photo.attach(io: file10, filename: "inspo10.jpg", content_type: "image/jpg")
inspo10.save!

inspo11 = Inspo.new(name: "Watch the Sunset on Mount Royal", genre: "date", location: "Montreal, QC H3H 1A1", content: "Get your hiking boots out!", cost: 1.00)
file11 = URI.open("https://images.unsplash.com/photo-1602599151411-875a848f71b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
inspo11.photo.attach(io: file11, filename: "inspo11.jpg", content_type: "image/jpg")
inspo11.save!

inspo12 = Inspo.new(name: "Get Lost in a Bookstore", genre: "date", content: "Be sure to surprise your date with new books", cost: 50.00)
file12 = URI.open("https://images.unsplash.com/photo-1593061231114-1798846fd643?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
inspo12.photo.attach(io: file12, filename: "inspo12.jpg", content_type: "image/jpg")
inspo12.save!

inspo13 = Inspo.new(name: "DIY Sushi Night", genre: "date", content: "The best ingredients can be found at Miyamoto", cost: 100.00)
file13 = URI.open("https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80")
inspo13.photo.attach(io: file13, filename: "inspo13.jpg", content_type: "image/jpg")
inspo13.save!

inspo14 = Inspo.new(name: "Meditation Retreat", genre: "gift", content: "Escape together", cost: 500.00)
file14 = URI.open("https://images.unsplash.com/photo-1520363147109-9ab9d1c8f8a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1256&q=80")
inspo14.photo.attach(io: file14, filename: "inspo14.jpg", content_type: "image/jpg")
inspo14.save!

inspo15 = Inspo.new(name: "Send a Love Poem", genre: "text", content: "Every time\nI see your face\nit reminds\nme of you.")
file15 = URI.open("https://images.unsplash.com/photo-1517867065801-e20f409696b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80")
inspo15.photo.attach(io: file15, filename: "inspo15.jpg", content_type: "image/jpg")
inspo15.save!

inspo16 = Inspo.new(name: "Netflix and Chill", genre: "date", content: "🎬🍿😏", cost: 20.00)
file16 = URI.open("https://sm.askmen.com/t/askmen_in/article/n/netflix-an/netflix-and-chill_xjgm.1200.jpg")
inspo16.photo.attach(io: file16, filename: "inspo16.jpg", content_type: "image/jpg")
inspo16.save!

inspo17 = Inspo.new(name: "Explore the Botanical Gardens", genre: "date", content: "An oasis in the middle of the city", cost: 45.00, location: "4101 Sherbrooke Street East, Montréal, Quebec")
file17 = URI.open("https://d1q0twczwkl2ie.cloudfront.net/wp-content/uploads/2015/03/new.jpg")
inspo17.photo.attach(io: file17, filename: "inspo17.jpg", content_type: "image/jpg")
inspo17.save!

inspo18 = Inspo.new(name: "Stroll along the Lachine Canal", genre: "date", content: "For a 2-hour walk, make Atwater Market your goal from McGill and de la Commune")
file18 = URI.open("https://media.timeout.com/images/105897435/1372/1029/image.jpg")
inspo18.photo.attach(io: file18, filename: "inspo18.jpg", content_type: "image/jpg")
inspo18.save!

inspo19 = Inspo.new(name: "Mixology Kit", genre: "gift", content: "Why pay $15 for a drink at the bar when your partner can make you one for free?", cost: 127.00)
file19 = URI.open("https://www.pamperedchef.ca/iceberg/com/product/100013-lg.jpg")
inspo19.photo.attach(io: file19, filename: "inspo19.jpg", content_type: "image/jpg")
inspo19.save!

inspo20 = Inspo.new(name: "Street Art Hunt", genre: "date", content: "Where's Waldo: Street Art Edition")
file20 = URI.open("https://www.mtl.org/sites/default/files/styles/hero/public/2022-04/44730_1.jpg?itok=qu90_lwC")
inspo20.photo.attach(io: file20, filename: "inspo20.jpg", content_type: "image/jpg")
inspo20.save!

inspo21 = Inspo.new(name: "Kobo Clara HD", genre: "gift", content: "The perfect reading companion for any book lover", cost: 150.00)
file21 = URI.open("https://p0.pikist.com/photos/451/474/kobo-reading-light-ebook-hammock-reading-reader-tablet-digital-holiday.jpg")
inspo21.photo.attach(io: file21, filename: "inspo21.jpg", content_type: "image/jpg")
inspo21.save!

inspo22 = Inspo.new(name: "Dispatch Coffee", genre: "gift", content: "Coffee that tastes good and does good", cost: 30.00)
file22 = URI.open("https://dispatch.imgix.net/5hEq85BJ4gJttltNgM6miA/4798683d11b88e490a26542c58e05e8a/Dispatch-aug004.jpg?auto=format,compress&w=1800")
inspo22.photo.attach(io: file22, filename: "inspo22.jpg", content_type: "image/jpg")
inspo22.save!

inspo23 = Inspo.new(name: "AirPods 3rd Generation", genre: "gift", content: "You can even personalize an engraving!", cost: 239.00)
file23 = URI.open("https://www.headphonesty.com/wp-content/uploads/2019/10/Apple-AirPods-Pro-Featured-Image.jpg")
inspo23.photo.attach(io: file23, filename: "inspo23.jpg", content_type: "image/jpg")
inspo23.save!

inspo24 = Inspo.new(name: "Karaoke Night", genre: "date", content: "Have a date at Le Date", cost: 50.00, location: "1218 St Catherine St E, Montreal, Quebec")
file24 = URI.open("https://api.time.com/wp-content/uploads/2019/09/karaoke-mic.jpg?quality=85&w=1600")
inspo24.photo.attach(io: file24, filename: "inspo24.jpg", content_type: "image/jpg")
inspo24.save!

inspo25 = Inspo.new(name: "Yoga with Surya", genre: "date", content: "The best class is on Wednesdays from 12:30-1:00pm at Le Wagon with Bernard", cost: 20.00, location: "5333 Av. Casgrain, Montréal, Quebec")
file25 = URI.open("https://blog.goodlifefitness.com/media/1456/12008.jpg")
inspo25.photo.attach(io: file25, filename: "inspo25.jpg", content_type: "image/jpg")
inspo25.save!

puts "Creating keywords"

keyword1 = Keyword.new(name: "Movies")
keyword_file1 = URI.open("https://images.unsplash.com/photo-1620177088260-a9150572baf4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2352&q=80")
keyword1.photo.attach(io: keyword_file1, filename: "movies.jpg", content_type: "image/jpg")
keyword1.save!

keyword2 = Keyword.new(name: "Flowers")
keyword_file2 = URI.open("https://m.media-amazon.com/images/I/71xK85Lm0rL._AC_SL1500_.jpg")
keyword2.photo.attach(io: keyword_file2, filename: "flowers.jpg", content_type: "image/jpg")
keyword2.save!

keyword3 = Keyword.new(name: "Food")
keyword_file3 = URI.open("https://images.unsplash.com/photo-1598763773372-127da881eb84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80")
keyword3.photo.attach(io: keyword_file3, filename: "tacos.jpg", content_type: "image/jpg")
keyword3.save!

keyword4 = Keyword.new(name: "Hiking")
keyword_file4 = URI.open("https://images.unsplash.com/photo-1551632811-561732d1e306?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80")
keyword4.photo.attach(io: keyword_file4, filename: "hiking.jpg", content_type: "image/jpg")
keyword4.save!

keyword5 = Keyword.new(name: "Wine")
keyword_file5 = URI.open("https://images.unsplash.com/photo-1561461056-77634126673a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80")
keyword5.photo.attach(io: keyword_file5, filename: "wine.jpg", content_type: "image/jpg")
keyword5.save!

keyword6 = Keyword.new(name: "Art")
keyword_file6 = URI.open("https://images.unsplash.com/photo-1545989253-02cc26577f88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80")
keyword6.photo.attach(io: keyword_file6, filename: "art.jpg", content_type: "image/jpg")
keyword6.save!

keyword7 = Keyword.new(name: "Books")
keyword_file7 = URI.open("https://images.unsplash.com/photo-1535905557558-afc4877a26fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80")
keyword7.photo.attach(io: keyword_file7, filename: "books.jpg", content_type: "image/jpg")
keyword7.save!

keyword8 = Keyword.new(name: "Shopping")
keyword_file8 = URI.open("https://images.unsplash.com/photo-1561715276-a2d087060f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80")
keyword8.photo.attach(io: keyword_file8, filename: "shopping.jpg", content_type: "image/jpg")
keyword8.save!

keyword9 = Keyword.new(name: "Coffee")
keyword_file9 = URI.open("https://images.unsplash.com/photo-1596018589855-e9a2a91f687f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1925&q=80")
keyword9.photo.attach(io: keyword_file9, filename: "coffee.jpg", content_type: "image/jpg")
keyword9.save!

keyword10 = Keyword.new(name: "Music")
keyword_file10 = URI.open("https://images.unsplash.com/photo-1507838153414-b4b713384a76?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
keyword10.photo.attach(io: keyword_file10, filename: "music.jpg", content_type: "image/jpg")
keyword10.save!

keyword11 = Keyword.new(name: "Cats")
keyword_file11 = URI.open("https://images.unsplash.com/photo-1572252821143-035a024857ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80")
keyword11.photo.attach(io: keyword_file11, filename: "cats.jpg", content_type: "image/jpg")
keyword11.save!

keyword12 = Keyword.new(name: "Spirituality")
keyword_file12 = URI.open("https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80")
keyword12.photo.attach(io: keyword_file12, filename: "meditation.jpg", content_type: "image/jpg")
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

# keyword16 = Keyword.new(name: "Sushi")
# keyword16.photo.attach(io: URI.open("https://images.unsplash.com/photo-1584583570840-0a3d88497593?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=927&q=80"), filename: "sushi.jpg", content_type: "image/jpg")
# keyword16.save!

# keyword17 = Keyword.new(name: "Nature")
# keyword17.photo.attach(io: URI.open("https://images.unsplash.com/photo-1515622866498-b50a07b339e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80"), filename: "nature.jpg", content_type: "image/jpg")
# keyword17.save!

# keyword18 = Keyword.new(name: "Carpentry")
# keyword18.photo.attach(io: URI.open("https://images.unsplash.com/photo-1426927308491-6380b6a9936f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"), filename: "carpentry.jpg", content_type: "image/jpg")
# keyword18.save!

puts "Hardcoding InspoKeywords 'cause we're hacks"

# ik1 = InspoKeyword.new(); ik1.inspo = inspo1; ik1.keyword = keyword6; ik1.save!
# ik2 = InspoKeyword.new(); ik2.inspo = inspo2; ik2.keyword = keyword2; ik2.save!
# ik3 = InspoKeyword.new(); ik3.inspo = inspo3; ik3.keyword = keyword9; ik3.save!
# ik4 = InspoKeyword.new(); ik4.inspo = inspo3; ik4.keyword = keyword11; ik4.save!
# Keyword.all.each do |keyword|
#   ik5 = InspoKeyword.new(); ik5.inspo = inspo4; ik5.keyword = keyword; ik5.save!
# end
# ik17 = InspoKeyword.new(); ik17.inspo = inspo5; ik17.keyword = keyword5; ik17.save!
# ik18 = InspoKeyword.new(); ik18.inspo = inspo6; ik18.keyword = keyword11; ik18.save!
# ik19 = InspoKeyword.new(); ik19.inspo = inspo7; ik19.keyword = keyword6; ik19.save!
# ik20 = InspoKeyword.new(); ik20.inspo = inspo7; ik20.keyword = keyword8; ik20.save!
# Keyword.all.each do |keyword|
#   ik21 = InspoKeyword.new(); ik21.inspo = inspo8; ik21.keyword = keyword; ik21.save!
# end
# ik33 = InspoKeyword.new(); ik33.inspo = inspo9; ik33.keyword = keyword1; ik33.save!
# ik34 = InspoKeyword.new(); ik34.inspo = inspo9; ik34.keyword = keyword3; ik34.save!

# ik35 = InspoKeyword.new(); ik35.inspo = inspo16; ik35.keyword = keyword1; ik35.save!
# ik36 = InspoKeyword.new(); ik36.inspo = inspo17; ik36.keyword = keyword2; ik36.save!
# ik37 = InspoKeyword.new(); ik37.inspo = inspo18; ik37.keyword = keyword4; ik37.save!
# ik38 = InspoKeyword.new(); ik38.inspo = inspo19; ik38.keyword = keyword5; ik38.save!
# ik39 = InspoKeyword.new(); ik39.inspo = inspo20; ik39.keyword = keyword6; ik39.save!
# ik40 = InspoKeyword.new(); ik40.inspo = inspo21; ik40.keyword = keyword7; ik40.save!
# ik41 = InspoKeyword.new(); ik41.inspo = inspo22; ik41.keyword = keyword9; ik41.save!
# ik42 = InspoKeyword.new(); ik42.inspo = inspo23; ik42.keyword = keyword10; ik42.save!
# ik43 = InspoKeyword.new(); ik43.inspo = inspo24; ik43.keyword = keyword10; ik43.save!

# ik44 = InspoKeyword.new(); ik44.inspo = inspo10; ik44.keyword = keyword3; ik44.save!
# ik45 = InspoKeyword.new(); ik45.inspo = inspo11; ik45.keyword = keyword4; ik45.save!
# ik46 = InspoKeyword.new(); ik46.inspo = inspo12; ik46.keyword = keyword7; ik46.save!
# ik47 = InspoKeyword.new(); ik47.inspo = inspo12; ik47.keyword = keyword8; ik47.save!
# ik48 = InspoKeyword.new(); ik48.inspo = inspo13; ik48.keyword = keyword3; ik48.save!
# ik49 = InspoKeyword.new(); ik49.inspo = inspo14; ik49.keyword = keyword12; ik49.save!

# ik50 = InspoKeyword.new(); ik50.inspo = inspo25; ik50.keyword = keyword12; ik50.save!
# Keyword.all.each do |keyword|
#   ik51 = InspoKeyword.new(); ik51.inspo = inspo15; ik51.keyword = keyword; ik51.save!
# end


# event1 = Event.new(date: Time.new(2022, 8, 28, 19), content: "text")
# event1.partner = partner1
# event1.inspo = inspo1
# event1.save!

# event2 = Event.new(date: Time.new(2022, 8, 27, 15), content: "text")
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
