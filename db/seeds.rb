Artist.create(name: "MIA", bio: "She's a musician.")
Artist.create(name: "Paul McCartney", bio: "He is from The Beatles.")
Artist.create(name: "Queens of the Stone Age", bio: "The greatest rock band of our time.")

Genre.create(name: "Rock")
Genre.create(name: "Hip-Hop")
Genre.create(name: "Classic Rock")

Song.create(name: "Paper Planes", artist_id: 1, genre_id: 2)
Song.create(name: "Monkberry Moon Delight", artist_id: 2, genre_id: 3)
Song.create(name: "Unreborn Again", artist_id: 3, genre_id: 1)