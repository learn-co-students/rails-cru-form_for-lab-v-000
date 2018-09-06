class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    genre_find
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create!(genre_params)
    redirect_to @genre
  end

  def edit
    genre_find
  end

  def update
    genre_find
    @genre.update(genre_params)
    redirect_to @genre
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def genre_find
    @genre = Genre.find(params[:id])
  end

end
