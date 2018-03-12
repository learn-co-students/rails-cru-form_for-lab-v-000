class SongsController < ApplicationController
	include Paramable

	def index 
		@songs = Song.all
	end

	def create
		@song = Song.new(paramable(:song, :name, :artist_id, :genre_id))
		@song.save
		redirect_to song_path(@song)
	end

	def new
		@song = Song.new
	end

	def show
		@song = Song.find(params[:id])
		@genre = @song.genre
		@artist = @song.artist
	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
		@song = Song.find(params[:id])
		@song.update(paramable(:song, :name, :artist_id, :genre_id))
		redirect_to song_path(@song)
	end
end
