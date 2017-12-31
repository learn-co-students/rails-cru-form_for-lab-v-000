1. Songs, artists, genres. 
	resource generate for each Artist/Done, 
rails g resource Genre name:string --no-test-framework
1.5
A song belongs to an artist

A song belongs to a genre

A genre has many songs

An artist has many songs

2. create, update, and show
song show page -- display each of the song's genre and artist, and link to 
respective genre and artist show pages link_to 

table "artists"
  string   "name"
  text     "bio"
 
table "genres"
  string   "name"
 
table "songs"
  string   "name"
  integer  "artist_id"
  integer  "genre_id"

  3. strong params 

  4. 