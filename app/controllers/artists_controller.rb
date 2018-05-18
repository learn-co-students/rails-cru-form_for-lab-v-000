class ArtistsController < ApplicationController
    
    def show
        @artist = get_artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = get_artist
    end

    def update
        @artist = get_artist
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end
    
    private
    def get_artist
        Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end