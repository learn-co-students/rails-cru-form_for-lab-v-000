artist = Artist.create(name:"Bob",bio:"his name is bob")
song = Song.create(name:'Sine song')
genre = Genre.create(name:'greatest')
song.genre = genre
song.artist = artist
song.save
