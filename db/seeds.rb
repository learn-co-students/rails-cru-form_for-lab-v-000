# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
dog_artist = Artist.create(name: "Molly", bio: "I'm a dog..." )
chicken_artist = Artist.create(name: "Buckbeak", bio: "I'm a chicken..." )
lizard_artist = Artist.create(name: "Tater-Tot", bio: "I'm a lizard..." )

dog_genre = Genre.create(name: "Barking")
chicken_genre = Genre.create(name: "Clucking")
lizard_genre = Genre.create(name: "Crunching")

dog_song = Song.new(name: "Barking at the Postman")
dog_song.artist = dog_artist
dog_song.genre = dog_genre
dog_song.save

chicken_song = Song.create(name: "Clucking for Cheese")
chicken_song.artist = chicken_artist
chicken_song.genre = chicken_genre
chicken_song.save

lizard_song = Song.create(name: "More Roaches Please")
lizard_song.artist = lizard_artist
lizard_song.genre = lizard_genre
lizard_song.save
