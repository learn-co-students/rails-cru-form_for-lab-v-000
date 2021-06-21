# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create([{name: "Kanye West", bio: "The Goat"}, {name: "Kid Cudi", bio: "The Chosen One"}])
Song.create([name: "On Sight", artist_id: 1, genre_id: 1])