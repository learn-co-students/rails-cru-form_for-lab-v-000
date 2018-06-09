class ArtistsController < ApplicationController

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def create
        @artist = Artist.new(params_artist)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(params_artist)
        redirect_to artist_path(@artist)
    end

    private

    def params_artist
        params.require(:artist).permit(:name, :bio)
    end
    
end
