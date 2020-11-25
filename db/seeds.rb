
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
 name: "Tennis match",
 description: "Tennis practice for beginner.",
 location: "Checkpoint Charlie Berlin",
 price: 5,
 capacity: 2,
 level: 1,
 sport: "Tennis",
 user: mark
)
