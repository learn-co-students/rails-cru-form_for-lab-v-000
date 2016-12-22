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
	  @artist = Artist.create(params[:artist])
	  @artist.save
	  redirect_to artist_path(@artist)
	end

	def edit
		@song = Artist.find(params[:id])
	end

	def update
	  @artist = Artist.find(params[:id])
	  @artist.update(params.require(:artist))
	  redirect_to artist_path(@artist)
	end
end
