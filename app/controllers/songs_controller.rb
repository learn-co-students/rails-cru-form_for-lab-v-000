class SongsController < ApplicationController
	def new
		@song = Song.new
	end

	def create
		@song = Song.create!(song_params(:name, :genre_id, :artist_id))
		@song.save
		redirect_to song_path(@song.id)
	end

	def show
		@song = Song.find_by_id(params["id"])
	end

	def edit
		@song = Song.find_by_id(params["id"])
	end

	def update
		@song = Song.find_by_id(params["id"])
		@song.update(song_params(:name, :genre_id, :artist_id))
		redirect_to song_path(@song.id)
	end

	def index
		@songs = Song.all
	end
end
