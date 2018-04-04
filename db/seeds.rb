# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.create!([{name: "Attention"}, {name: "1 Thing"}, {name: "Delilah"}, {name: "Midnight Blues"}])

Genre.create!([{name: "R&B"}, {name: "Pop"}, {name: "Alternative"}, {name: "Country"}])

Artist.create!([{name: "Charlie Puth", bio: "A guy."}, {name: "Amelia", bio: "A gal."}, {name:"Florence + the Machine", bio: "A gal."}, {name: "Cherlene", bio: "A fictional gal."}])