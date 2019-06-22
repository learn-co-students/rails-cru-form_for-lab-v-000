# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@artist = Artist.create(name: "Beyonce", bio: "Queen Bey")
@genre = Genre.create(name: "Pop")
@song = Song.create(name: "Halo", artist_id: @artist.id, genre_id: @genre.id)

@artist = Artist.create(name: "The Beatles", bio: "Greatest band ever")
@genre = Genre.create(name: "Pop Rock")
@song = Song.create(name: "Yellow Submarine", artist_id: @artist.id, genre_id: @genre.id)
