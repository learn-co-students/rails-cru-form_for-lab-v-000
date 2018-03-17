class GenresController < ApplicationController
   def index
        @genres = Genre.all
    end

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
      @genre = Genre.new(genres_params(:name))
      @genre.save
      redirect_to genre_path(@genre)
    end

    def update
      @genre = Genre.find(params[:id])
      @genre.update(genres_params(:name))
      redirect_to genre_path(@genre)
    end

    private

    def genres_params(*args)
      params.require(:genre).permit(*args)
    end
end
