# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

## artists 
queen = Artist.create(name: "Queen", bio: "British Rock n' Roll band")
back_street_boys = Artist.create(name: "Backstreet Boys", bio: "Popular 90s boy band")

## genres 
rock = Genre.create(name: "Rock")
pop = Genre.create(name: "Pop")
## songs 
Song.create(name: "Don't Stop Me Now", artist_id: queen.id, genre_id: rock.id)
Song.create(name: "I want it that way", artist_id: back_street_boys.id, genre_id: pop.id)