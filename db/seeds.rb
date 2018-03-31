# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
DatabaseCleaner.clean_with(:truncation)

@artist = Artist.create(name: "Allyson", bio: "Lives in LA")
@genre = Genre.create(name: "Pop")
@song = Song.create(name: "Franklin's Song", artist_id: @artist.id, genre_id: @genre.id)
