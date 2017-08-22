class ArtistsController < ApplicationController
    def show
        @artist = Artist.all.find(params[:id])
    end

    def create
        redirect_to artist_path(Artist.create(artist_params(:name, :bio)))
    end

    def update
        @artist = Artist.all.find(params[:id])
        @artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = Artist.all.find(params[:id])
    end

    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end
