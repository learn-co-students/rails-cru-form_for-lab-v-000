class ArtistsController < ApplicationController
	include Paramable
	def index 
		@artists = Artist.all
	end

	def create
		@artist = Artist.new(paramable(:artist, :name, :bio))
		@artist.save
		redirect_to artist_path(@artist)
	end

	def new
		@artist = Artist.new
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
		@artist = Artist.find(params[:id])
		@artist.update(paramable(:artist, :name, :bio))
		redirect_to artist_path(@artist)
	end
end
