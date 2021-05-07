# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#scaffold for creating a date
#Consultation.create(description:"", date:"2021-01-01".to_date)

#dummy data
Consultation.create(description:"Screen Repair Consultation", date:"2021-01-03".to_date)

Consultation.create(description:"Battery Replacement Consultation", date:"2021-02-01".to_date)


admin1 = User.create!(
  email: "jkirk@email.com",
  password: "enterprise",
  first_name: "James",
  last_name: "Kirk",
  address: "555 Enterprise Lane",
  city: "Seatle",
  state: "WA",
  zip_code: "12345",
  phone_number: "(123) 456-7891",
  specialty: "phone-repair",
  is_admin: true
)

user1 = User.create!(
  email: "wesley@email.com",
  password: "password",
  first_name: "Wesley",
  last_name: "Crusher",
  address: "444 Enterprise Lane",
  city: "Seatle",
  state: "WA",
  zip_code: "12345",
  phone_number: "(123) 555-4444",
  specialty: '',
  is_admin: false
)

user2 = User.create!(
  email: "jhopper@email.com",
  password: "password",
  first_name: "James",
  last_name: "Hopper",
  address: "345 Cabin Rd",
  city: "Hawkins",
  state: "IN",
  zip_code: "46001",
  phone_number: "(930) 654-1234",
  specialty: '',
  is_admin: false
)


user3 = User.create!(
  email: "billy@email.com",
  password: "password",
  first_name: "Billy",
  last_name: "Baker",
  address: "888 Lane Rd",
  city: "Memphis",
  state: "TN",
  zip_code: "38803",
  phone_number: "(930) 655-1234",
  specialty: '',
  is_admin: false
)

user4 = User.create!(
  email: "spock@email.com",
  password: "password",
  first_name: "Spock",
  last_name: "Vulcan",
  address: "456 Final Frontier Rd",
  city: "Space",
  state: "WA",
  zip_code: "38803",
  phone_number: "(930) 655-1234",
  specialty: '',
  is_admin: false
)

device1 = Device.create!(
  deviceType: "phone",
  brand: "Apple",
  model: "iPhone SE",
  damage: "other",
  extra: "it wont turn on :(",
  consultationAvailability: "2021-04-20 02:20:00",
  user: user1
)

device2 = Device.create!(
  deviceType: "laptop",
  brand: "Lenovo",
  model: "ThinkPad",
  damage: "spilled juice",
  extra: "My daughter, Eleven, spilled some juice on my laptop, can you fix it?",
  consultationAvailability: "2021-04-23 02:20:00",
  user: user2
)

sender0 = Sender.create!(
  user: admin1
)

sender1 = Sender.create!(
  user: user1
)

sender2 = Sender.create!(
  user: user2
)

sender3 = Sender.create!(
  user: user3
)

sender4 = Sender.create!(
  user: user4
)

receiver0 = Receiver.create!(
  user: admin1
)

receiver1 = Receiver.create!(
  user: user1
)

receiver2 = Receiver.create!(
  user: user2
)

receiver3 = Receiver.create!(
  user: user3
)

receiver4 = Receiver.create!(
  user: user4
)

message0 = Message.create!(
  receiver: receiver1,
  sender: sender0,
  content: "Hello wesley, are you ready for the meet saturday?"
)