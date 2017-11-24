class ArtistsController < ApplicationController
    def new
        @artist = Artist.new
        render :form
    end
    def index
        @artists = Artist.all
    end
    def create
        @artist = Artist.new(post_params(:name, :bio))
        if @artist.save
            redirect_to artist_path(@artist)
        else
            redirect_to artists_path
        end
    end

    def edit
        @artist = Artist.find_by(id: params[:id])
        render :form
    end

    def update

        @artist = Artist.find_by(id: params[:id])
        if @artist.update(post_params(:name, :bio))
            redirect_to artist_path(@artist)
        else
            redirect_to artists_path
        end
    end

    def show

        @artist = Artist.find_by(id: params[:id])
    end

    private
    def post_params(*args)        
        params.require(:artist).permit(*args)

    end
end
