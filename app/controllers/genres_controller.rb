class GenresController < ApplicationController
        
    def show 
        @genre = Genre.find(params[:id])
    end 
    
    def new 
        @genre = Genre.new
    end 
    
    def create
        @genre = Genre.new(params.require(:genre).permit(:name))
        @genre.save 
        redirect_to genre_path(@genre)
    end 
end
