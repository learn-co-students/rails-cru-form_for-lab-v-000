class ArtistsController < ApplicationController

	def new
		@artist = Artist.new
	end

	def show
		@artist = Artist.find_by_id(params[:id])
	end

	def create
		@artist = Artist.create(artist_params)
		redirect_to artist_path(@artist)
	end
	
	def edit
		@artist = Artist.find_by_id(params[:id])
	end

	def update
		@artist = Artist.find_by_id(params[:id])
		@artist.update(artist_params)
		redirect_to artist_path(@artist)
	end

end

private

	def artist_params 
		params.require(:artist).permit(:name, :bio)
	end
