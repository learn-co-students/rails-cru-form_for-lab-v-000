class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = find_genre(params)
  end

  def update
    @genre = find_genre(params)
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = find_genre(params)
  end

  private
  def find_genre(params)
    Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
