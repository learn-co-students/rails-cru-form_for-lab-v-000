class SongsController < ApplicationController
  def index

  end

  def new
    #render new form
    @song = Song.new
  end

  def create
    #create new Object
    #reroute to show page
    @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show
    #query object by id
    #render show page with object specific info
    @song = Song.find(params[:id])
    @artist = @song.artist
    @genre = @song.genre
    @artists = Song.all
  end

  def edit
    #query object by id
    @song = Song.find(params[:id])
    #render edit form
  end

  def update
    #query object by id
    #update that object
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
    #reroute to show page
  end
end
