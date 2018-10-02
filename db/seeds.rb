# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
taytay = Artist.create(name: "Taylor Swift", bio: "The Best")
pop = Genre.create(name: "Pop")
Song.create(name: "...Ready For It?", artist: taytay, genre: pop)
Song.create(name: "Gorgeous", artist: taytay, genre: pop)
Song.create(name: "I Did Something Bad", artist: taytay, genre: pop)
Song.create(name: "Don't Blame Me", artist: taytay, genre: pop)
Song.create(name: "Call It What You Want", artist: taytay, genre: pop)
