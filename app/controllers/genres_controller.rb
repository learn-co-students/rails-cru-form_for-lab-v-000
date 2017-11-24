class GenresController < ApplicationController
   def new
        @genre = Genre.new
        render :form
    end
    def index
        @genres = Genre.all
    end
    def create
        @genre = Genre.new(post_params(:name))
        if @genre.save
            redirect_to genre_path(@genre)
        else
            redirect_to genres_path
        end
    end

    def edit
        @genre = Genre.find_by(id: params[:id])
        render :form
    end

    def update
        @genre = Genre.find_by(id: params[:id])
        if @genre.update(post_params(:name))
            redirect_to genre_path(@genre)
        else
            redirect_to genres_path
        end
    end

    def show
        @genre = Genre.find_by(id: params[:id])
    end

    private
    def post_params(*args)
        params.require(:genre).permit(*args)
    end
end
