class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end
  
	def create
	  @song = Song.create(these_params(:song, :name, :artist_id, :genre_id))
	  redirect_to song_path(@song)
	end

  def show
    set_song
  end

  def edit
    set_song
  end

  def update
    set_song
	  @song.update(these_params(:song, :name, :artist_id, :genre_id))
	  redirect_to song_path(@song)
  end

  def destroy
  end
  
  private
  
  def set_song
    @song = Song.find(params[:id])
  end
end
