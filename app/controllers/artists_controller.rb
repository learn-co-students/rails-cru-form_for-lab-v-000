class ArtistsController < ApplicationController
    def index
		@artists = Artist.all
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
	  @artist = Artist.new(params[:artist])
	  @artist.save
	  redirect_to artist_path(@artist)
	end

	def edit
	    @artist = artist.find(params[:id])
	end

	def update
		@artist = artist.find(params[:id])
		@artist.update(params.require(:artist).permit(:name, :bio))
	  redirect_to artist_path(@artist)
	end
end
