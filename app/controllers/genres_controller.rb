class GenresController < ApplicationController

  def show
    set_genre
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
    set_genre
  end

  def update
    set_genre.update(genre_params(:name))
    redirect_to genre_path(set_genre)
  end

  private

  def set_genre
    @genre ||= Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
