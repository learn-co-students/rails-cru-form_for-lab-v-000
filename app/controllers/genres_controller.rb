class GenresController < ApplicationController

    before_action :find_genre, only: [:show, :edit, :update]

    def index
    end
    
    def show
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params(:name))
        @genre.save
        redirect_to @genre
    end

    def edit
    end

    def update
        @genre.update(genre_params(:name))
        redirect_to @genre
    end


    private
    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

    def find_genre
        @genre = Genre.find_by(id: params[:id])
    end
end
