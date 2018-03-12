class SongsController < ApplicationController
	
	def index
		@songs = Song.all
	end

	def show
		@song = Song.find(params[:id])
		@artist = Artist.find(@song.artist_id)
		@genre = Genre.find(@song.genre_id)
	end

	def new
		@song = Song.new
	end

	def create
		song = Song.new(list_params(:name, :artist_id, :genre_id))
		song.save
		redirect_to song_path(song)
	end

	def edit
		@song = Song.new
	end

	def update
		song = Song.update(list_params(:name, :artist_id, :genre_id))
		redirect_to song_path(song)
	end

	private

	def list_params(*args)
		params.require(:song).permit(*args)
	end
end
