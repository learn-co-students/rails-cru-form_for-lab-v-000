class SongsController < ApplicationController

	def create
		@song = Song.new(params.require(:song).permit(:name))
		@song.save
		redirect_to song_path(@song)
	end

	def update
		@song = Song.find(params[:id])
		@song.update(params.require(:song).permit(:name))
		redirect_to song_path(@song)
	end

	def show
		@song = Song.find(params[:id])
	end

	def new
		@song = Song.new
	end

	def edit
		@song = Song.find(params[:id])
	end

	def index
		@songs = Song.all
	end

end