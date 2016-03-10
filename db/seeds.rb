# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.create([
  {name: '50 Cent', bio: 'Imma get rich or die tryin man!'}, 
  {name: 'Amy Whinehouse', bio: 'Rehab? I think not.'}
  ])

Genre.create([
  {name: 'Rap'}, 
  {name: 'Soul'}
  ])

Song.create([
  {name: 'Many Men', artist_id: 1, genre_id: 2}, 
  {name: 'In Da Club', artist_id: 1, genre_id: 1}, 
  {name: 'Back to Black', artist_id: 1, genre_id: 2}
  ])