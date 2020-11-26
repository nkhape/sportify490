Booking.destroy_all
Event.destroy_all
User.destroy_all

puts "All events and users are destroyed"

sports = ["golf", "running", "tennis", "swimming", "badminton"]



mark = User.create(
 username: "marcus",
 location: "Brandeburger Tor Berlin",
 email: "marcus@mark.com",
 password: "123456",
 description: "hello. I like Tennis."
)

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
 user: mark
)
