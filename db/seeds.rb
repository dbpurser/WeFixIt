# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin1 = User.create!(
  email: "jkirk@email.com",
  password: "enterprise",
  first_name: "James",
  last_name: "Kirk",
  address: "555 Enterprise Lane",
  zip_code: "12345",
  state: "WA",
  city: "Seatle",
  phone_number: "(123) 456-7891"
)

user1 = User.create!(
  email: "wesley@email.com",
  password: "password",
  first_name: "Wesley",
  last_name: "Crusher",
  address: "444 Enterprise Lane",
  zip_code: "12345",
  state: "WA",
  city: "Seatle",
  phone_number: "(123) 555-4444"
)