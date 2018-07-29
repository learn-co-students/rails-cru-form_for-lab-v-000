class ArtistsController < ApplicationController

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new
        @artist.name = params[:artist][:name]
        @artist.bio = params[:artist][:bio]
        @artist.save
        redirect_to artist_path(@artist.id)
         # you dont have to put the id  
    end

    def update
        @artist = Artist.find(params[:id])
		@artist.update(params.require(:artist))
	    redirect_to artist_path(@artist)
    end

end
