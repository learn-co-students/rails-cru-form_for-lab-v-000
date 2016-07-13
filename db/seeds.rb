@artist=Artist.create(name: "Frodus")
@artist.songs << Song.create(name: "Red Bull of Juarez")
@artist.genres << Genre.create(name: "Spazzcore")