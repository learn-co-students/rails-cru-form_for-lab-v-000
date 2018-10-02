class GenresController < ApplicationController

    before_action :get_genre, only: [:show, :update, :edit, :delete]
    before_action :new_genre, only: [:new]

    def index
        @genres = Genre.all
    end

    def show 
    end

    def create
        g = Genre.create(genre_params(:name))
        redirect_to genre_path(g)
    end

    def update
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end

    def edit

    end

    def new

    end


    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

    def get_genre
        @genre = Genre.find(params[:id])
    end

    def new_genre
        @genre = Genre.new
    end
    
end
