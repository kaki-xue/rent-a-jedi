# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Alien.destroy_all
User.destroy_all

sarah = User.new(open_id: "sarah")
sarah.save

tom = User.new(open_id: "tom")
tom.save

kaki = User.new(open_id: "kaki")
kaki.save



yoda = Alien.new(name: "Yoda", image: 'https://lumiere-a.akamaihd.net/v1/images/Yoda-Retina_2a7ecc26.jpeg?region=0%2C0%2C1536%2C768', skill: 'wise', price_per_day: 15000, description: 'Yoda has been considered the greatest Jedi Master of the era by many, he was one of the most skilled users of the Force in the history of the entire galaxy. Yoda was so strong in the Force that he has demonstrated the ability to effortlessly disarm powerful opponents like the Dark Jedi Asajj Ventress with a simple gesture. ', user_id: sarah.id)
yoda.save

luke = Alien.new(name: "Luke Skywalker", image: 'https://fsmedia.imgix.net/1e/c0/22/d8/8ce9/4d63/8217/658d316403a0/mark-hamill-has-a-sexy-theory-about-luke-skywalker-returning-to-star-wars.jpeg?rect=414%2C0%2C2146%2C1074&auto=format%2Ccompress&dpr=2&w=650', skill: 'handsome', price_per_day: 10000, description: 'The son of the Sith Lord Darth Vader, Luke Skywalker set out to save Princess Leia from the Galactic Empire and became a hero of the Rebel Alliance. Luke began training to become a Jedi under the tuition of both Obi-Wan Kenobi and Yoda, and after discovering his heritage and redeeming his father became the leader of the New Jedi Order and brought the Jedi back into the Galaxy, arguably making him the greatest and most powerful Jedi of all time.', user_id: kaki.id)

luke.save

r2d2 = Alien.new(name: "R2-D2", image: 'https://images-na.ssl-images-amazon.com/images/I/712Lwo7hMoL._SL1500_.jpg', skill: 'handyman', price_per_day: 3000000, description: 'TAn astromech droid that has various useful functions. He has been on countless journeys, usually paired with C-3PO.', user_id: tom.id)

r2d2.save

puts "i created #{User.count} users"
puts "i created #{Alien.count} aliens!"
