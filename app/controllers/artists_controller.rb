class ArtistsController < ApplicationController
	before_action :set_artist!, only: [:show, :edit, :update]

	def index
		@artists = Artist.all
    end

    def show
    end

    def new
		@artist = Artist.new
    end

	def create
		@artist = Artist.new(artist_params)
		if @artist.valid?
			@artist.save
			redirect_to artist_path(@artist)
		else
			render :new
		end
	end

    def edit
    end

	def update
	    @artist.update(artist_params)

	    if @artist.save
	      redirect_to @artist
	    else
	      render :edit
	    end
	end

	private

	def artist_params
		params.require(:artist).permit(:name, :bio)
	end

	def set_artist!
		@artist = Artist.find_by(params[:id])
	end
end
