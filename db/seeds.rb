# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artists = [
  {name: "Artist1", bio: "One"},
  {name: "Artist2", bio: "Two"},
  {name: "Artist3", bio: "Three"},
  {name: "Artist4", bio: "Four"},
  {name: "Artist5", bio: "Five"}
]

genres = [
  {name: "Genre1"},
  {name: "Genre2"},
  {name: "Genre3"},
  {name: "Genre4"},
  {name: "Genre5"}
]

songs = [
  {name: "Song1", artist_id: 1, genre_id: 1},
  {name: "Song2", artist_id: 2, genre_id: 2},
  {name: "Song3", artist_id: 3, genre_id: 3},
  {name: "Song4", artist_id: 4, genre_id: 4},
  {name: "Song5", artist_id: 5, genre_id: 5}
]

artists.each {|s| Artist.create(s)}
genres.each {|s| Genre.create(s)}
songs.each {|s| Song.create(s)}

