require 'open-uri'

Booking.destroy_all
Event.destroy_all
User.destroy_all

puts "All events and users are destroyed"

sports = ["golf", "running", "tennis", "swimming", "badminton"]



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


event1 = Event.create(
 name: "Tennis match 1 on 1 bring your racquet",
 description: "Tennis practice for beginner.",
 location: "Checkpoint Charlie Berlin",
 price: 5,
 capacity: 2,
 level: 1,
 sport: "Tennis",
 date: DateTime.new(2020,12,1,17),
 user: mark
)

event2 = Event.create(
 name: "Tennis match 2 on 2 bring your racquet",
 description: "Tennis game for intermediate players",
 location: "Alexanderplatz Berlin",
 price: 10,
 capacity: 4,
 level: 2,
 sport: "Tennis",
 date: DateTime.new(2020,12,5,17),
 user: andrea
)

event3 = Event.create(
 name: "Tennis practice for 2",
 description: "Let's play some tennis. Advanced player only please ",
 location: "Volkspark Friedrichshain Berlin",
 price: 4,
 capacity: 2,
 level: 3,
 sport: "Tennis",
 date: DateTime.new(2020,12,5,17),
 user: andrea
)
