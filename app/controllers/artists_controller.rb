class ArtistsController < ApplicationController

    def show
        @artist = Artist.find_by_id(params[:id])
    end

    def edit
        @artist = Artist.find_by_id(params[:id])
    end

    def update
        @artist = Artist.find_by_id(params[:id])
        @artist.update(artist_params(:name, :bio))
        redirect_to @artist
    end

    def create
        @artist = Artist.new(artist_params(:name, :bio))
        @artist.save
        redirect_to @artist
    end

    def new
        @artist = Artist.new
    end

    private
    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end
