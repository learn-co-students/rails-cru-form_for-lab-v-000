class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end 
    
    def show
        @genre = getInstance(Genre)
    end 
    
    def new 
        @genre = Genre.new
    end 
    
    def create 
        @created_genre = Genre.create!(check_params(:genre, :name))
        redirect_to genre_path(@created_genre);
    end 
    
    def edit
        @genre = getInstance(Genre)
    end 
    
    def update 
        @updated_genre = getInstance(Genre)
        @updated_genre.update!(check_params(:genre, :name))
        redirect_to genre_path(@updated_genre)
    end 
end
