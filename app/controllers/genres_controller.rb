class GenresController < ApplicationController

  def show
    find_genre
  end

  def new
    @genre = Genre.new
  end

  def edit
    find_genre
  end

  def create
    @genre = Genre.create(params.require(:genre).permit(:name))

    redirect_to @genre
  end

  def update
    find_genre
    @genre.update(params.require(:genre).permit(:name))

    redirect_to @genre
  end

  private

  def find_genre
    @genre = Genre.find(params[:id])
  end

end
