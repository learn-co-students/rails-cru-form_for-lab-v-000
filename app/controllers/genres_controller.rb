class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    find_genre_by_id
  end

  def update
    find_genre_by_id
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def find_genre_by_id
    @genre = Genre.find(params[:id])
  end

end
