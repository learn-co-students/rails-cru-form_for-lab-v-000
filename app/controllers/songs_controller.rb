class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

	def show
		@song = Song.find(params[:id])
    @genre = Genre.find_by(params[:genre_id])
    @artist = Artist.find_by(params[:artist_id])
	end

  def new
		@song = Song.new
	end

  def create
    @song = Song.new(song_params(:name, :artists, :genres))
    @song.save
    redirect_to song_path(@song)
  end


	def edit
		@song = Song.find(params[:id])
	end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :artists, :genres))
    redirect_to song_path(@song)
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
