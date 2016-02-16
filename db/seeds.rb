# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
artist = Artist.create(name: "Miles Davis", bio: "I'll play it first and tell you what it is later.")
genre  = Genre.create(name: "Jazz")
         Song.create(name: "Freddie Freeloader", artist_id: artist.id, genre_id: genre.id)
