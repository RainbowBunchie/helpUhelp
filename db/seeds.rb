# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(title: "admin")
Role.create(title: "volunteer")
Status.create(title: "pending")
Status.create(title: "declined")
Status.create(title: "confirmed")
r = Role.find(1)
r2 = Role.find(2)
User.create(role: r, first_name: "Clara", last_name: "Huber", email: "admin@admin.at", telephone: "12345", password: "admin")
User.create(role: r2, first_name: "Marc", last_name: "Peter", email: "volunteer@volunteer.at", telephone: "12345", password: "volunteer")
Task.create(title: "Babysitter gesucht", description: "Dringend gesuchter Babysitter gesucht für zwei Kinder", no_of_people: 1, date: Date.new(2018, 05, 26), time: Time.new(2018, 05, 26, 10, 15), place: "Maxglan")
Task.create(title: "Wohnungsbesichtigung", description: "Es wird ein Freiwilliger gesucht für circa 2 Stunden gesucht", no_of_people: 1, date: Date.new(2018, 05, 28), time: Time.new(2018, 05, 28, 14, 00), place: "Lehen")
Task.create(title: "Beamtengang", description: "Wir suchen eine Person, die für 5h Zeit hat", no_of_people: 1, date: Date.new(2018, 05, 22), time: Time.new(2018, 05, 22, 17, 15), place: "Itzling")
Task.create(title: "Babysitter für 4 Kinder", description: "Wir suchen eine Person, die für 5h Zeit hat", no_of_people: 1, date: Date.new(2018, 05, 21), time: Time.new(2018, 05, 21, 20, 15), place: "Itzling")
