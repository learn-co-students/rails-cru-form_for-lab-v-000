class ArtistsController < ApplicationController

    def index
        @artists = Artist.all 
    end

    def new 
        @artist = Artist.new
    end

    def create 
        @artist = Artist.create(params.require(:artists).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end
end
