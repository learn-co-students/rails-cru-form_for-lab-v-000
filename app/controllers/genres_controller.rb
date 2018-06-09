class GenresController < ApplicationController

    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def create
        @genre = Genre.new(params_genre)
        @genre.save
        redirect_to genre_path(@genre)
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(params_genre)
        redirect_to genre_path(@genre)
    end

    private

    def params_genre
        params.require(:genre).permit(:name)
    end    
end
