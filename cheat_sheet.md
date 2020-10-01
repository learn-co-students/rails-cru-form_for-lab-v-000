## Dependencies (Gems/packages)

## Configuration (environment variables/other stuff in config folder)

## Database
```db
table "artists"
  string   "name"
  text     "bio"

table "genres"
  string   "name"

table "songs"
  string   "name"
  integer  "artist_id"
  integer  "genre_id"
```
## Models
* Songs

* Artists

* Genres

The data relationship will look something like this:

* A song belongs to an artist

* A song belongs to a genre

* A genre has many songs

* An artist has many songs
## Views
artists/show.html.erb
artists/edit.html.erb
artists/new.html.erb
## Controllers
ArtistsController
## Routes
show
new
create
edit
update
resources :artists