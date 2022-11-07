
require 'faker'

Faker::Config.locale = 'fr'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

20.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "#{first_name.downcase}-#{last_name.downcase}@yopmail.com"

  User.create(
    first_name: first_name,
    last_name: last_name,
    email: email,
    # password: Faker::Internet.password
  )
end

50.times do
  Event.create(
    start_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 30),
    duration: 5 * rand(1..24),
    title: Faker::Game.title,
    description: Faker::Quote.most_interesting_man_in_the_world,
    price: rand(1..1000),
    location: Faker::Address.city,
    event_admin: User.all.sample
  )
end

150.times do
  Attendance.create(
    user: User.all.sample,
    event: Event.all.sample
  )
end

