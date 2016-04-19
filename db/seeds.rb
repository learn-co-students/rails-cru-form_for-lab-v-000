# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tyler = Artist.create(name: "Tyler", bio: "Working in Bkyln")
blues = Genre.create(name: "Blues")
new_world_blues = Song.create(name: "New World Blues", artist_id: tyler.id, genre_id: blues.id)
