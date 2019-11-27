# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Alien.destroy_all
User.destroy_all
Booking.destroy_all

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

r2d2 = Alien.new(name: "R2-D2", image: 'https://images-na.ssl-images-amazon.com/images/I/712Lwo7hMoL._SL1500_.jpg', skill: 'handyman', price_per_day: 3000000, description: 'An astromech droid that has various useful functions. He has been on countless journeys, usually paired with C-3PO.', user_id: tom.id)

r2d2.save

chewbecca = Alien.new(name: "Chewbecca", image: 'https://pbs.twimg.com/profile_images/2360695492/Chewbacca_by_DryJack_400x400.jpg', skill: 'hariy hugs', price_per_day: 3000000, description: 'Chewbacca is a Wookiee from the forest planet of Kashyyk. Born 200 years before the Battle of Yavin. Chewbacca was the son of Attichitcuk. Growing up, Chewbacca was known for his sense of adventure, always exploring different parts of his homeworld, including the dangerous Shadowlands. ', user_id: sarah.id)

chewbecca.save

leia = Alien.new(name: "Princess Leia", image: 'https://i.pinimg.com/originals/36/4d/03/364d03a9747b410bd5ec88f98f8a1e01.jpg', skill: 'achieve nerdy boys fantasy', price_per_day: 6000000, description: 'Leia Organa grew to be an intelligent, headstrong, and fiery young woman with a natural gift for leadership and politics. She also proved adept at combat, developing a keen understanding of battle strategy and honing her blaster skills to the point where she almost never missed her target.', user_id: tom.id)

leia.save

jabba = Alien.new(name: "Jabba the Hutt", image: 'https://vafloc02.s3.amazonaws.com/isyn/images/f901/img-2406901-f.jpg', skill: 'intimidate naughty children', price_per_day: 3000000, description: 'Jabba is known as a Hutt, a slug like species that originated on the planet of Varl. Jabba was one of the most notorious Hutt crime lords in the galaxy, who governed a large criminal empire located in the Outer Rim. ', user_id: kaki.id)

jabba.save

kit_fisto = Alien.new(name: "Kit Fisto", image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNSVDXpyBo4O8ngtlH4nvXX7c3vl5OjnEODuaMAty8dSBRNw2G&s', skill: 'heart-melting smile', price_per_day: 3000000, description: 'Kit Fisto was a renowned Nautolan Jedi Master in the waning years of the Galactic Republic. He is best known for his friendly smile.', user_id: tom.id)

kit_fisto.save

3.times do
  booking = Booking.new(
  user_id: [sarah.id, tom.id, kaki.id].sample,
  alien_id: [yoda.id, kaki.id, yoda.id].sample,
  start_date: ["2019-11-03", "2019-11-07", "2019-11-08"].sample,
  end_date: ["2019-11-09", "2019-11-10", "2019-11-11"].sample
)
  booking.save!
end

puts "i created #{User.count} users"
puts "i created #{Alien.count} aliens!"
puts "i created #{Booking.count} bookings!"
