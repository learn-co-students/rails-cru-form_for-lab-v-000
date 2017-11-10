class ArtistsController < ApplicationController
  def show # implicitly renders views/artists/show.html.erb view file, which has the same name as #show action
    @artist = Artist.find(params[:id]) # find artist instance to be shown by its id attribute value = whatever replaced :id route variable in URL
  end

  def new # implicitly renders views/artists/new.html.erb view file (form to create a new artist), which has the same name as #new action
    @artist = Artist.new # instantiate @artist instance to pass to view file (because form_for takes @artist as argument)
  end
# route post '/artists' (which receives data submitted in create form) is mapped to #create action below
  def create # instantiate artist instance with its name and bio attributes mass assigned from strong params hash
    @artist = Artist.new(artist_params) # argument is strong params hash, returned by calling #artist_params private method
    @artist.save # save artist instance to DB by inserting its row representation into artists table
    redirect_to artist_url(@artist) # redirect to show page that displays the artist just created
  end # name of route get '/artists/:id' is artist. So #artist_url(@artist) route helper returns full URL to show page
  # Rails automatically gets id attribute value of @artist instance from this instance passed in as argument
  def edit # implicitly renders views/artists/edit.html.erb view file (form to edit artist), which has the same name as #edit action
    @artist = Artist.find(params[:id]) # find artist instance to be edited by its id attribute value = whatever replaced :id route variable in URL
  end

  def update # route patch '/artists/:id' is mapped to this #update action (method)
    @artist = Artist.find(params[:id]) # find the artist instance being edited by its id (whatever replaces :id route variable)
    @artist.update(artist_params) # pass in strong params, returned by #artist_params, to update artist's attributes and save changes to DB
    redirect_to artist_url(@artist) # redirect to webpage that shows the artist just edited
  end

  private

    def artist_params # method will return sanitized, strong params
      params.require(:artist).permit(:name, :bio)
    end
    # params must have top-level "artist" key, which points to (and stores) artist hash nested inside params hash
    # Within the artist hash (nested inside params hash), only permit the keys "name" and "bio",
    # which correspond to the 2 attributes of an artist instance (and the 2 fields in the form to create artist)
end
