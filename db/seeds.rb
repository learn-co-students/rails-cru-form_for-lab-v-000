# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(:name => "M&M", :bio => "I like to walk the beach at night by meself")
Song.create(:name => "I like this website, it is nice")
Genre.create(:name => "Polka")