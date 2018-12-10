# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artist1 = Artist.create(:name => 'A1', :bio => 'bio1')
genre_1 = Genre.create(:name => 'genre1')
song1 = Song.create(:name => 'song1', :artist_id => 1, :genre_id => 1)
