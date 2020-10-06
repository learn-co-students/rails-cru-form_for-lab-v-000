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

Resource Generator for association:
```
rails g resource Song name:string artist:references genre:references --no-test-framework --no-assets --no-helper
```

This will create the model for you and add belongs_to :artist and belongs_to :genre in addition to adding the appropriate foreign keys to the generated migration:

```rb
class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre
end

class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.references :artist, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
```

## Validations

When do they run?
When we're about to save data to the database:
create
create!
save
save!
update
update!

we can also trigger them with `valid?`

## Errors

Validations have as their purpose, adding errors to objects that shouldn't be saved to the database. The save & update methods will return false if any validations fail. Whereas, the create method will return the instance without a database assigned id. This is why you'll see `.new` and `.save` in the `create` action instead of `create`. This allows you to take advantage of the boolean return value of `save`

For example:

```rb
def create 
  @song = Song.new(song_params)
  if @song.save 
    redirect_to song_path(@song)
  else 
    render :new
  end
end
```

This allows us to display the form again, if there were errors that should prevent a song from being saved. We can do that like so:


```rb
<% if @song.errors.any? %>
  <div id="error_explanation">
    <h2><%= pluralize(@song.errors.count, "error") %> prohibited this song from being saved:</h2>
 
    <ul>
    <% @song.errors.full_messages.each do |msg| %>
      <li><%= msg %></li>
    <% end %>
    </ul>
  </div>
<% end %>
```

# Validations Cheat Sheet
[Validations Rails Guide](https://guides.rubyonrails.org/active_record_validations.html)
## Dependencies (Gems/packages)
ActiveRecord
## Configuration (environment variables/other stuff in config folder)
No additional config required
## Database
The reason for validations is to prevent bad data from entering the database to begin with. Add validations at the beginning so you don't have bad data in your development database.
## Models
This is where you actually add the validations. You call a method called `validates` and pass in the attributes you'd like to validate and then the validations you'd like to apply:

```rb
class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre

  validates :name, :artist_id, :genre_id, presence: true
end
```
This will add a presence validation to :name, :artist_id, and :genre_id
## Views
We can display validation error messages using markup borrowed from the railsguides:
```html
<% if @song.errors.any? %>
  <div id="error_explanation">
    <h2><%= pluralize(@song.errors.count, "error") %> prohibited this song from being saved:</h2>
 
    <ul>
    <% @song.errors.full_messages.each do |msg| %>
      <li><%= msg %></li>
    <% end %>
    </ul>
  </div>
<% end %>
```

If you want to show error messages directly above the field they relate to, you can access the erorrs inside of the object. 

```rb
@song.errors #=> 
#<ActiveModel::Errors:0x00007fee37075af8 @base=#<Song id: nil, name: nil, artist_id: nil, genre_id: nil, created_at: nil, updated_at: nil>, @messages={:name=>["can't be blank"], :artist_id=>["can't be blank"], :genre_id=>["can't be blank"]}, @details={:name=>[{:error=>:blank}], :artist_id=>[{:error=>:blank}], :genre_id=>[{:error=>:blank}]}> 
```
To get errors related to the song's name, you could do:
```rb
@song.errors.messages[:name].to_sentence
```
## Controllers
We can check if an object saves or updates, and redirect if so, rendering the form again if not allows us to display validation error messages in the view.
## Routes
The main concern here is whether we're going to redirect to another route upon success or render the form again in response to an error