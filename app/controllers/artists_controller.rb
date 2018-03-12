class ArtistsController < ApplicationController

	def index 
		@artist = Artist.all 
	end
	
	def show 
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
		artist = Artist.new(list_params(:name, :bio))
		artist.save
		redirect_to artist_path(artist)
	end

	def edit
		@artist = Artist.new
	end

	def update
		artist = Artist.update(list_params(:name, :bio))
		redirect_to artist_path(artist)
	end

	private

	def list_params(*args)
		params.require(:artist).permit(*args)
	end
end
