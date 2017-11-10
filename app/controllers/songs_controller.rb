class SongsController < ApplicationController

  def index # implicitly renders views/songs/index.html.erb view file (to display all song instances) since file has same name as this #index action
    @songs = Song.all # @songs stores array of all song instances to pass to view file
  end

  def new # implicitly renders views/songs/new.html.erb view file (form to create new song) b/c it has the same name as #new action
    @song = Song.new # instantiate @song instance to pass to view (since form_for argument is @song)
  end

  def show # implicitly renders views/songs/show.html.erb view file to display a single song
    @song = Song.find(params[:id]) # find song instance by its id value (whatever replaces :id route variable in "/songs/:id" show URL)
  end

  def create # route post '/songs' (which receives data submitted in form to create a new song) is mapped to this #create action
    @song = Song.new(song_params) # instantiate song instance w/ attributes mass assigned from strong params hash (which was returned by calling #song_params)
    @song.save # save song instance to DB by inserting its row representation into songs table
    redirect_to song_url(@song) # redirect to show page that displays the song just created
  end

  def edit # implicitly renders views/songs/edit.html.erb view file (form to edit a song) since view file has the same name as this #edit action
    @song = Song.find(params[:id]) # find song instance we will edit by its id value (whatever replaces :id route variable in "/songs/:id/edit" URL)
  end

  def update # route patch '/songs/:id' receives the data submitted in edit form and is mapped to this #update action
    @song = Song.find(params[:id]) # find song instance being edited by its id value (whatever replaces :id route variable)
    @song.update(song_params) # update the attributes of the song instance (mass assign changed values from strong params hash) and save changes to DB
    redirect_to song_url(@song) # redirect to show page that displays the song just edited
  end

  private
  # calling #song_params returns sanitized, strong params
    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
    # params hash must have top-level "song" key that points to (and stores) song hash nested inside params hash
    # within the song hash, the only keys permitted are "name", "artist_id" and "genre_id",
    # corresponding to the 3 form fields permitted:
    # user can enter the song's name attribute value
    # user can enter id attribute values of the artist and genre instances that the song instance belongs to
  end
