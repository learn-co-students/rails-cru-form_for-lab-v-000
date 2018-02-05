class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
    # Update does not need a view. Only GET requests need views. Update just handles business logic, e.g. takes input from Edit, validates errors, processes data, etc. It updates the database, but doesn't respond with its own view - it might however redirect you to another view, such as Show, Index, or an Edit page with error messages.
  end

  private

    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
