class SongsController < ApplicationController
  before_action :set_song!, only: [:show, :edit, :update]
  def index
	  @songs = Song.all
  end

  def show
  end

  def new
	@song = Song.new
  end

  def create
	  @song = Song.new(song_params)
	  if @song.valid?
		  @song.save
		  redirect_to song_path(@song)
	  else
		  render :new
	  end
  end

  def edit
  end

  def update
	  @song.update(song_params)
	  if @song.save
		redirect_to @song
	  else
		render :edit
	  end
  end

  private

  def song_params
	  params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def set_song!
	  @song = Song.find(params[:id])
  end
end
