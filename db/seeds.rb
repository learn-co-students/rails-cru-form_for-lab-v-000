# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@art2 = Artist.create(name: "Pom", bio: "Uo pom bio")
@art1 = Artist.create(name: "Fifi", bio: "Uo fifi ")
@gen1 = Genre.create(name: "Rock wock")
@gen2 = Genre.create(name: "Ohhh")
@son1 = Song.create(name: "Love Song", artist_id: @art1.id, genre_id: @gen2.id)
@son2 = Song.create(name: "Lame Song", artist_id: @art2.id, genre_id: @gen1.id)
