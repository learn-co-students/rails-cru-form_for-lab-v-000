# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: "iszoloscope", bio: "Beat based noise artist hailing from the Neatherlands, originally from Montreal.")
Artist.create(name: "tonokom", bio: "Female ambient glitch & noise artist hailing from NYC.")
Artist.create(name: "SALT", bio: "Noise artist (antzen/hymen label creator) with a emphasis on japanese culture, hailing from Deutchland.")
Artist.create(name: "Myrkur", bio: "Female metal & folk artist hailing from rural Denmark.")

Genre.create(name: "noise")
Genre.create(name: "glitch")
Genre.create(name: "metal")

Song.create(name: "zero becomes one", artist_id: 1 , genre_id: 1 )
Song.create(name: "nocturnal", artist_id: 2 , genre_id: 2 )
Song.create(name: "ueno", artist_id: 3 , genre_id: 1 )
Song.create(name: "gladiatrix", artist_id: 4 , genre_id: 1 )
