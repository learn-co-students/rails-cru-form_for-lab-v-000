class ArtistsController < ApplicationController
    
    def show
        @artist = set_artist
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
        @artist = set_artist
    end
    
    def update
        @artist = set_artist
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end
    
    private 
    
        private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_params
      params.require(:artist).permit(:name, :bio)
    end
end
