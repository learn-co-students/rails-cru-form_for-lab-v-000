class GenresController < ApplicationController
    def show
        @genre = Genre.all.find(params[:id])
    end

    def create
        redirect_to genre_path(Genre.create(genre_params(:name)))
    end

    def edit
        @genre = Genre.all.find(params[:id])
    end

    def update
        @genre = Genre.all.find(params[:id])
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end

    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end
end
