class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = find
  end

  def update
    @genre = find
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = find
  end

  private

  def find
    Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
