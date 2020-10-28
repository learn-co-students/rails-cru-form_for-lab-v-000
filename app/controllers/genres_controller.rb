class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def new

    end

    def create
        @genre = Genre.new
        @genre[:name] = params[:genre][:name]
        @genre.save
        redirect_to genre_path(@genre)
    end
      
    def edit
        @genre = Genre.find(params[:id])
    end

end
