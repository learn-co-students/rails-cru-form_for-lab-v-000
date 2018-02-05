class ArtistsController < ApplicationController
	before_action :artist_by_id, only: [:show, :update, :edit]
	def index	
		@artists = Artist.all	
	end

	def new
		@artist = Artist.new
	end

	def show
	end

	def create
		@artist = Artist.new(artist_params)
		if @artist.save
			redirect_to artist_path(@artist)
		else
			render :new
		end
	end

	def update
		if @artist.update(artist_params)
			redirect_to artist_path(@artist)
		else
			render :edit
		end
	end

	private
	def artist_params
		params.require(:artist).permit(:name, :bio)
	end

	def artist_by_id
		@artist = Artist.find(params[:id])
	end
end
