# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ww = Song.create(name: "Wagon Wheel")
ocms = Artist.create(name: "Old Crow Medicine Show", bio: "Buskin in Tennessee")
bg = Genre.create(name: "Bluegrass")

ww.artist = ocms
ww.genre = bg
ww.save
