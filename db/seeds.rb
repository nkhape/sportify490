require 'open-uri'

Booking.destroy_all
Event.destroy_all
User.destroy_all

puts "All events and users are destroyed"

sports = ["golf", "running", "football", "tennis", "swimming", "badminton"]



mark = User.new(
 username: "marcus",
 location: "Brandeburger Tor Berlin",
 email: "marcus@mark.com",
 password: "123456",
 description: "hello. I like Tennis."
)

mark.photo.attach(io: File.open("#{Rails.root}/db/images/marcus.jpg"), filename: "marcus.jpg")
mark.save!

andrea = User.new(
 username: "andrea",
 location: "Kotbusser Tor Berlin",
 email: "andrea@hello.com",
 password: "123456",
 description: "Advanced tennis player. Wants to practice regularly."
)

andrea.photo.attach(io: File.open("#{Rails.root}/db/images/andrea.jpg"), filename: "andrea.jpg")
andrea.save!

adam = User.new(
 username: "adam",
 location: "Kotbusser Tor Berlin",
 email: "adam@hello.com",
 password: "123456",
 description: "Advanced soccer player. Wants to practice regularly."
)

adam.photo.attach(io: File.open("#{Rails.root}/db/images/adam.jpeg"), filename: "adam.jpeg")
adam.save!

elisa = User.new(
 username: "elisa",
 location: "Kotbusser Tor Berlin",
 email: "elisa@hello.com",
 password: "123456",
 description: "Advanced soccer player. Wants to practice regularly."
)

elisa.photo.attach(io: File.open("#{Rails.root}/db/images/elisa.jpg"), filename: "elisa.jpg")
elisa.save!

kelly = User.new(
 username: "kelly",
 location: "Kotbusser Tor Berlin",
 email: "kelly@hello.com",
 password: "123456",
 description: "Advanced soccer player. Wants to practice regularly."
)

kelly.photo.attach(io: File.open("#{Rails.root}/db/images/kelly.jpeg"), filename: "kelly.jpeg")
kelly.save!

marvin = User.new(
 username: "marvin",
 location: "Kotbusser Tor Berlin",
 email: "marvin@hello.com",
 password: "123456",
 description: "Advanced soccer player. Wants to practice regularly."
)

marvin.photo.attach(io: File.open("#{Rails.root}/db/images/marvin.jpeg"), filename: "marvin.jpeg")
marvin.save!

simone = User.new(
 username: "simone",
 location: "Kotbusser Tor Berlin",
 email: "simone@hello.com",
 password: "123456",
 description: "Advanced soccer player. Wants to practice regularly."
)

simone.photo.attach(io: File.open("#{Rails.root}/db/images/simone.jpg"), filename: "simone.jpg")
simone.save!

sven = User.new(
 username: "sven",
 location: "Kotbusser Tor Berlin",
 email: "sven@hello.com",
 password: "123456",
 description: "Advanced soccer player. Wants to practice regularly."
)

sven.photo.attach(io: File.open("#{Rails.root}/db/images/sven.jpeg"), filename: "sven.jpeg")
sven.save!

puts "All users have been created."


event1 = Event.create(
 name: "Tennis lessons: 1 on 1",
 description: "Tennis practice for beginners. This is for everyone, who is interested in learning how to play tennis and wants to learn from a total pro (me...). 🎾",
 location: "Paradestraße 28-32, 12101 Berlin",
 price: 5,
 capacity: 2,
 level: 1,
 sport: "tennis",
 date: DateTime.new(2020,12,5,10),
 user: mark
)

event2 = Event.create(
 name: "Mid-day Football game",
 description: "Let's have a spontaneous game of footy. Open to all levels, but the overall level will be a bit higher. ⚽️",
 location: "Volkspark am Weinberg Berlin",
 price: 10,
 capacity: 4,
 level: 2,
 sport: "football",
 date: DateTime.new(2020,12,5,12),
 user: andrea
)

event3 = Event.create(
 name: "Run Group!",
 description: "I just recently moved to Berlin and am looking for some people, who want to join my running group 🏃‍♂️",
 location: "Volkspark Friedrichshain Berlin",
 price: 0,
 capacity: 5,
 level: 1,
 sport: "running",
 date: DateTime.new(2020,12,6,18),
 user: adam
)

event4 = Event.create(
 name: "Just keep swimming...",
 description: "Do you feel like a fish out of water? Well... feel like a fish IN water instead! Join me 🏊‍♀️",
 location: "Weissensee Berlin",
 price: 0,
 capacity: 5,
 level: 2,
 sport: "swimming",
 date: DateTime.new(2020,12,12,9),
 user: elisa
)

event5 = Event.create(
 name: "Tennis for pros!",
 description: "Like I said in the title, I am a serious pro, and I don't want to play with any losers. So, if you're a pro, bring it on - I'll kick your butt! 😠",
 location: "Ritterstraße 90, 10969 Berlin",
 price: 4,
 capacity: 2,
 level: 4,
 sport: "tennis",
 date: DateTime.new(2020,12,12,06),
 user: kelly
)

event6 = Event.create(
 name: "Lovely Golf Practice",
 description: "Hello there, dear people of the Internet. I would fancy a game of golf - anyone out there, who shares this sentiment? 👨",
 location: "Tempelhofer Feld Berlin",
 price: 15,
 capacity: 2,
 level: 1,
 sport: "golf",
 date: DateTime.new(2020,12,7,13),
 user: marvin
)

event7 = Event.create(
 name: "Footy 5s",
 description: "Footy 5s!! The best way to play Footy! Wow! Now I just need to find 4 other people... please.... join me!! 😲",
 location: "Bobo Fuego Berlin",
 price: 6,
 capacity: 4,
 level: 2,
 sport: "football",
 date: DateTime.new(2020,12,10,19),
 user: simone
)

event8 = Event.create(
 name: "Running is Fun-ning!",
 description: "Hi there, I am Sven and I love to run! But I have one problem, I also HATE to run... it's complicated. Please join me! 😜",
 location: "Herzberge Park Berlin",
 price: 0,
 capacity: 1,
 level: 1,
 sport: "running",
 date: DateTime.new(2020,12,18,10),
 user: sven
)

event9 = Event.create(
 name: "Badminton? GOODminton!",
 description: "Please join me even though my title is very lame. I promise I'm less lame. Pinky promise! 🏸",
 location: "Squash House Berlin",
 price: 4,
 capacity: 2,
 level: 2,
 sport: "badminton",
 date: DateTime.new(2020,12,20,20),
 user: simone
)

event10 = Event.create(
 name: "Badminton Supreme Bonanza",
 description: "Hi there! Looking for some peeps to play a quick game of badminton with! I like doubles! 🙌",
 location: "Volkspark Friedrichshain Berlin",
 price: 4,
 capacity: 2,
 level: 3,
 sport: "badminton",
 date: DateTime.new(2020,12,12,13),
 user: marvin
)

puts "All events have been created."
