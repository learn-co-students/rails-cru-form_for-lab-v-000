# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all
Genre.destroy_all
artists = Artist.create([{ name: 'sunny', bio: 'good man' }, { name: 'saqib', bio: 'very shy' }])
genres = Genre.create([{ name: 'pop'}, { name: 'rock'}])
songs = Song.create([{ name: 'song 1', artist: artists.first, genre: genres.first}, { name: 'song 2', artist: artists.last, genre: genres.last}])
