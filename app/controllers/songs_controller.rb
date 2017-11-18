require 'pry'

class SongsController < ApplicationController

	def index
		@songs = Song.all
	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
		@song = Song.find(params[:id])
		@song.update(song_params)
		redirect_to song_path(@song)
	end

	def show
		#binding.pry
		@song = Song.find(params[:id])
		#binding.pry
	end

	def new
		@song = Song.new
	end

	def create
		@song = Song.new(song_params)
		@song.save
		redirect_to song_path(@song)
	end

	private 

	def song_params
		params.require(:song).permit(:name, :bio)
	end

end
