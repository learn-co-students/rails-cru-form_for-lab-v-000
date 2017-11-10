When form to create a new artist is submitted:
params = {
  "artist" => {
    "name" => "name attribute value of artist instance entered in form",
    "bio" => "bio attribute value of artist instance entered in form"
  }
}

When form to create a new genre is submitted:
params = {
  "genre" => {"name" => "name attribute value of genre instance entered in form"}
}

When form to create a new song is submitted:
params = {
  "song" => {
    "name" => "name attribute value of song instance entered in form",
    "artist_id" => "ID of artist instance that the song instance belongs to, selected from dropdown",
    "genre_id" => "ID of genre instance that the song instance belongs to, selected from dropdown"
  }
}
