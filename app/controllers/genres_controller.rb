class GenresController < ApplicationController

    def show
      @genre = Genre.find(params[:id])
    end

    def new
      @genre = Genre.new
    end

    def create
      @genre = Genre.create(name: params[:genre][:name])
      redirect_to genre_path(@genre)
    end

    def edit
      @genre = Genre.new
    end

    def update
      @genre = Genre.find(params[:id])
      @genre.update(params.require(:genre))
      redirect_to genre_path(@genre)
    end
end
