# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
songs = Song.create!([{name: "Attention"}, {name: "1 Thing"}, {name: "Delilah"}, {name: "Midnight Blues"}])

artists = Artist.create!([{name: "Charlie Puth"}, {name: "Amelia"},{name: "Florence + the Machine"},{name: "Cherlene"}])

genres = Genre.create!([{name: "R&B"}, {name: "Pop"}, {name:"Alternative"},{name:"Country"}, {name:"Test", bio: "I am a test."}] )
