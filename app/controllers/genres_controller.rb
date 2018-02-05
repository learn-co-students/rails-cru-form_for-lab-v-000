class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    current_genre
  end

  def new
  end

  def edit
    current_genre
  end

  def create
    genre = Genre.create(permitted)
    redirect_to genre_path(genre)
  end

  def update
    current_genre
    @genre.update(permitted)
    redirect_to genre_path(@genre)
  end

  private
    def current_genre
      @genre = Genre.find(params[:id])
    end

    def permitted
      params.require(:genre).permit(:name)
    end
end
