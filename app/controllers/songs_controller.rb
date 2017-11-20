class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find_by(id: @song.artist_id)
    @genre = Genre.find_by(id: @song.genre_id)
  end

  def new
		@song = Song.new
	end

  def create
	  @song = Song.new(post_params(:name))
    @song.update(artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
	  redirect_to song_path(@song)
	end

  def edit
    @song = Song.find(params[:id])
  end

  def update
	  @song = Song.find(params[:id])
    @song.update(name: params[:song][:name],artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
	  redirect_to song_path(@song)
	end

  private

	def post_params(*args)
  	params.require(:song).permit(*args)
	end

end
