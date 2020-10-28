# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create([{name: "Emanuel", bio: "Brown Pants"}, {name: "Bob", bio: "Green Pants"}, {name: "Steve", bio: "Apple Pants"}]);
Genre.create([{name: "Rap"}, {name: "Rock"}, {name: "EDM"}]);
Song.create([{name: "99Problems"}, {name: "Fun Times"}, {name: "Handstand"}])