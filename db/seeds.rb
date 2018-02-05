# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.create(name: "My Genre")
Artist.create(name: "My Artist", bio: "My artist bio")
Song.create(name: "My Song", artist_id: 1, genre_id: 1)
