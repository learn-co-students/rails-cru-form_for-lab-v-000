# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "MJ", bio: "He lived and died")
Artist.create(name: "Metallica", bio: "They ROCK")

Genre.create(name: "Pop")
Genre.create(name: "Metal")

Song.create(name: "Beat it", artist_id: 1, genre_id: 1)
Song.create(name: "One", artist_id: 2, genre_id: 2)