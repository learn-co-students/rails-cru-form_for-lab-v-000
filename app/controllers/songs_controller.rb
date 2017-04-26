class SongsController < ApplicationController
	def show
		@song = find_song
	end

	def new
		@song = Song.new()
	end

	def create
		song = Song.create(params_helper(:name, :artist_id, :genre_id))
		redirect_to song_path(song)
	end

	def edit
		@song = find_song
	end

	def update
		song = find_song
		song.update(params_helper(:name, :artist_id, :genre_id))
		redirect_to song_path(song)
	end

	private

		def find_song
			Song.find(params[:id])
		end

		def params_helper(*args)
			params.require(:song).permit(*args)
		end
end
