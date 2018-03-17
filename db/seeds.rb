# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create({ name: '311', bio: 'alt-rockers from midwest'})
Artist.create({ name: 'cypress hill', bio: 'rapper'})
Song.create({ name: 'beautiful disaster', artist_id: 1, genre_id: 1 })
Song.create({ name: 'love song', artist_id: 1, genre_id: 1 })
Song.create({ name: 'rap superstar', artist_id: 2, genre_id: 2 })
Song.create({ name: 'insane in the brain', artist_id: 2, genre_id: 2 })
Genre.create({ name: 'rock'})
Genre.create({ name: 'rap'})