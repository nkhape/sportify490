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

mark.photo.attach(io: File.open("#{Rails.root}/db/images/marcus.jpeg"), filename: "marcus.jpeg")
mark.save!

andrea = User.new(
 username: "andrea",
 location: "Kotbusser Tor Berlin",
 email: "andrea@hello.com",
 password: "123456",
 description: "Advanced tennis player. Wants to practice regularly."
)

andrea.photo.attach(io: File.open("#{Rails.root}/db/images/andrea.jpeg"), filename: "andrea.jpeg")
andrea.save!

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
