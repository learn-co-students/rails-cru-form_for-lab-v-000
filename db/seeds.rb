# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: "Leonardo", bio: "From a town called Vinci")
Artist.create(name: "Michalangelo", bio: "From Rome")
Artist.create(name: "Betzalel", bio: "From a village in Goshen")

Genre.create(name: "Masters Oil Painting")
Genre.create(name: "Masters Marble Sclupture")
Genre.create(name: "Bronze Age Artisan Keliym")

Song.create(name: "Mona Lisa", artist_id: 1, genre_id: 1)
Song.create(name: "Man in a Box Sketch", artist_id: 1, genre_id: 1)

Song.create(name: "Sisteen Chapel", artist_id: 2, genre_id: 1)
Song.create(name: "King David Standing", artist_id: 2, genre_id: 2)

Song.create(name: "Menorah", artist_id: 3, genre_id: 3)
Song.create(name: "Aron Kodesh", artist_id: 3, genre_id: 3)
