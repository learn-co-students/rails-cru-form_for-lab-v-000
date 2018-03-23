# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.create(name: "waking up", artist_id: 1, genre_id: 2)
Song.create(name: "getting better", artist_id: 2, genre_id: 1)
Artist.create(name: "Bro Beans", bio: "Trying to be a better person ALL the time.")
Artist.create(name: "The Good Guy", bio: "Living life to come closer to the ultimate truth.")
Genre.create(name: "Chillin")
Genre.create(name: "Happy")
