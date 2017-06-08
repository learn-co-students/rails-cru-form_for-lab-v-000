class ArtistsController < ApplicationController
	def show
		@artist = Artist.find_by_id(params["id"])
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.create(artist_params(:name, :bio))
		@artist.save
		redirect_to artist_path(@artist.id)
	end

	def edit
		@artist = Artist.find_by_id(params["id"])
	end

	def update
		@artist = Artist.find_by_id(params["id"])
		@artist.update(artist_params(:name, :bio))
		redirect_to artist_path(@artist.id)
	end
end
