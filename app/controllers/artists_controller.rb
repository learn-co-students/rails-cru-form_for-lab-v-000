class ArtistsController < ApplicationController
    def new
        @artist = Artist.new
    end
    
    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
    end

    def show
        @artist = current_artist
    end
    
    def edit
        @artist = current_artist
    end
    
    def update
        @artist = current_artist
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end
    
    private
    
    def current_artist
        Artist.find(params[:id])
    end
    
    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end
