class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end
    def show
        @artist = Artist.find(params[:id])
    end
    def new
        @artist = Artist.new
    end
    def create
        @artist = Artist.new
        @artist.name = params[:name]
        @artist.bio = params[:bio]
        @artist.save
        redirect_to artist_path(@artist)
    end
    def edit
        @artist = Artist.find(params[:id])
    end
    def update
        @artist = Artist.find(params[:id])
        @artist.update(name: params[:artist][:name], bio: params[:artist][:bio])
        redirect_to artist_path(@artist)
    end
    def post_params
        params.require(:artist).permit(:name, :bio)
    end
end
 
 
