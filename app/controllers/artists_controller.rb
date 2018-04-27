class ArtistsController < ApplicationController
  def index
    redirect_to 'artists#navigate'
  end

  def new
    #render new form
    @artist = Artist.new
  end

  def create
    #create new Object
    #reroute to show page
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show
    #query object by id
    #render show page with object specific info
    @artist = Artist.find(params[:id])
  end

  def edit
    #query object by id
    @artist = Artist.find(params[:id])
    #render edit form
  end

  def update
    #query object by id
    #update that object
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
    #reroute to show page
  end
end
artist
