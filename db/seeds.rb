
Event.destroy_all
Sport.destroy_all
User.destroy_all

puts "All sports and users are destroyed"

golf = Sport.create(name: "golf")
running = Sport.create(name: "running")
tennis = Sport.create(name: "tennis")
swimming = Sport.create(name: "swimming")
badminton = Sport.create(name: "badminton")



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
 price: "5€",
 capacity: "2",
 level: "beginner",
 sport: tennis,
 user: mark
)
