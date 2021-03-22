# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: "My Artist", bio: "My artist bio")
Artist.create(name: "My 2nd Artist", bio: "My 2nd artist bio")
Artist.create(name: "My 3rd Artist", bio: "My 3rd artist bio")
Genre.create(name: "My Genre")
Genre.create(name: "My 2nd Genre")
Song.create(name: "My Song", artist_id: 1, genre_id: 1)
Song.create(name: "My 2nd Song", artist_id: 2, genre_id: 2)
