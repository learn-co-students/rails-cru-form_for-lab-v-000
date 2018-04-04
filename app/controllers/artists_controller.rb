class ArtistsController < ApplicationController
    def index
        @artists = Artist.all 
    end 
    
    def show
        @artist = getInstance(Artist)
    end 
    
    def new 
        @artist = Artist.new 
    end 
    
    def create 
        @created_artist = Artist.create!(check_params(:artist, :name, :bio))
        redirect_to artist_path(@created_artist)
    end 
    
    def edit
        @artist = getInstance(Artist)
    end 
    
    def update 
        @updated_artist = getInstance(Artist)
        @updated_artist.update!(check_params(:artist, :name, :bio))
        redirect_to artist_path(@updated_artist)
    end 
end
