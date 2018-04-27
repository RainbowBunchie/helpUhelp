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

User.create(role: r, first_name: "Clara", last_name: "Huber", email: "admin@admin.at", telephone: "0664/9527493", password: "admin")
User.create(role: r2, first_name: "Marc", last_name: "Peter", email: "volunteer@volunteer.at", telephone: "0699/9627793", password: "volunteer")
User.create(role: r2, first_name: "Claudia", last_name: "Gruber", email: "volunteer2@volunteer.at", telephone: "0699/962291", password: "volunteer")
User.create(role: r2, first_name: "Hermann", last_name: "Gruber", email: "volunteer3@volunteer.at", telephone: "0699/546241", password: "volunteer")
User.create(role: r2, first_name: "Florian", last_name: "Schuster", email: "volunteer4@volunteer.at", telephone: "0699/482683", password: "volunteer")
User.create(role: r2, first_name: "Susanne", last_name: "Haumann", email: "volunteer5@volunteer.at", telephone: "0699/857583", password: "volunteer")


Task.create(title: "Babysitter gesucht", description: "Dringend gesuchter Babysitter gesucht für zwei Kinder bei Familie Salonovic in Lehen. Die beiden müssen aufs Arbeitsamt und deshalb brauchen die Kinder für ungefähr drei Stunden eine Betreuung. Die Kinder sind drei und sieben Jahre alt und sind sehr leise. Am besten Spielzeug selber mitnehmen oder bei schönem Wetter auf den Spielplatz gehen.", no_of_people: 1, date: Date.new(2018, 05, 26), time: Time.new(2018, 05, 26, 10, 15), place: "Maxglan")
Task.create(title: "Wohnungsbesichtigung", description: "Es wird eine Persongesucht, die mit zwei Flüchtling des Flüchtlingheims zu einer Wohnungsbesichtigung in Lehen geht. Die Flüchtlinge sollen im Heim abgeholt werden und dort auch wieder abgeliefert werden. Es handelt sich um ein Pärchen mit zwei Kindern. ", no_of_people: 1, date: Date.new(2018, 05, 28), time: Time.new(2018, 05, 28, 14, 00), place: "Lehen")
Task.create(title: "Beamtengang", description: "Wir suchen eine Person, die für fünf Stunden Zeit hat um mit drei Flüchtlichen zur Polizei zu gehen um einige Daten abzuklären ", no_of_people: 1, date: Date.new(2018, 05, 22), time: Time.new(2018, 05, 22, 17, 15), place: "Itzling")
Task.create(title: "Babysitter für 4 Kinder", description: "Es wird jemand gesucht der den ganzen Abend, der sich mit den vier Jugendlichen beschäftigt. Die Kinder sind Elf, Zwölf, Vierzehn und Siebzehn Jahre alt. Alle der Kinder können recht gut deutsch sprechen.", no_of_people: 1, date: Date.new(2018, 05, 21), time: Time.new(2018, 05, 21, 20, 15), place: "Itzling")
Task.create(title: "Wohnungsbesichtigung", description: "Es wird eine Persongesucht, die mit zwei Flüchtling des Flüchtlingheims zu einer Wohnungsbesichtigung in Lehen geht. Die Flüchtlinge sollen im Heim abgeholt werden und dort auch wieder abgeliefert werden. Es handelt sich um ein Pärchen mit zwei Kindern. ", no_of_people: 1, date: Date.new(2018, 05, 28), time: Time.new(2018, 05, 28, 14, 00), place: "Parsch")
Task.create(title: "Beamtengang", description: "Es wird eine Persongesucht, die mit zwei Flüchtling des Flüchtlingheims zu einer Wohnungsbesichtigung in Lehen geht. Die Flüchtlinge sollen im Heim abgeholt werden und dort auch wieder abgeliefert werden. Es handelt sich um ein Pärchen mit zwei Kindern. ", no_of_people: 1, date: Date.new(2018, 04, 28), time: Time.new(2018, 04, 28, 14, 00), place: "Lehen")
Task.create(title: "Babysitter für 3 Kinder", description: "Es wird eine Persongesucht, die mit zwei Flüchtling des Flüchtlingheims zu einer Wohnungsbesichtigung in Lehen geht. Die Flüchtlinge sollen im Heim abgeholt werden und dort auch wieder abgeliefert werden. Es handelt sich um ein Pärchen mit zwei Kindern. ", no_of_people: 1, date: Date.new(2018, 05, 28), time: Time.new(2018, 05, 28, 14, 00), place: "Aigen")
Task.create(title: "Wohnungsbesichtigung", description: "Es wird eine Persongesucht, die mit zwei Flüchtling des Flüchtlingheims zu einer Wohnungsbesichtigung in Lehen geht. Die Flüchtlinge sollen im Heim abgeholt werden und dort auch wieder abgeliefert werden. Es handelt sich um ein Pärchen mit zwei Kindern. ", no_of_people: 1, date: Date.new(2018, 05, 28), time: Time.new(2018, 05, 28, 14, 00), place: "Liefering")
Task.create(title: "Babysitter für 1 Kind", description: "Es wird eine Persongesucht, die mit zwei Flüchtling des Flüchtlingheims zu einer Wohnungsbesichtigung in Lehen geht. Die Flüchtlinge sollen im Heim abgeholt werden und dort auch wieder abgeliefert werden. Es handelt sich um ein Pärchen mit zwei Kindern. ", no_of_people: 1, date: Date.new(2018, 04, 28), time: Time.new(2018, 04, 28, 14, 00), place: "Lehen")
Task.create(title: "Beamtengang", description: "Es wird eine Persongesucht, die mit zwei Flüchtling des Flüchtlingheims zu einer Wohnungsbesichtigung in Lehen geht. Die Flüchtlinge sollen im Heim abgeholt werden und dort auch wieder abgeliefert werden. Es handelt sich um ein Pärchen mit zwei Kindern. ", no_of_people: 1, date: Date.new(2018, 05, 28), time: Time.new(2018, 05, 28, 14, 00), place: "Mülln")
