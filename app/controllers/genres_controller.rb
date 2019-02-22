class GenresController < ApplicationController
    def show
      find_genre
    end

    def new
      @genre = Genre.new
    end

    def create
      @genre = Genre.new(post_params)
      @genre.save
      redirect_to genre_path(@genre)
    end

    def edit
      find_genre
    end

    def update
      find_genre
      @genre.update(post_params)
      redirect_to genre_path(@genre)
    end

    private

    def find_genre
      @genre = Genre.find(params[:id])
    end

    def post_params(*args)
      params.require(:genre).permit(:name)
    end

end
