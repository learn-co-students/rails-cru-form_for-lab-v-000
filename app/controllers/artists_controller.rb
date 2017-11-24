class ArtistsController < ApplicationController

	require "pry"
	def show 
		@artist = Artist.find(params[:id])
		# binding.pry
	end

	def new 
		@artist = Artist.new
	end

	def index 
		@artist = Artist.all
	end
	def create
		@artist = Artist.new(artist_params)
		@artist.save
		redirect_to artists_path(@artist)
		
	end

	def edit 
	  @artist = Artist.find(params[:id])
	end

	def update
	  @artist = Artist.find(params[:id])
	  @artist.update(artist_params)
	  redirect_to artist_path(@artist)
	end

	private

	def artist_params(*args)
		params.require(:artist).permit(*args)
	end



end
