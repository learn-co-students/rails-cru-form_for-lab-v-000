class GenresController < ApplicationController
  def show
    @genre = find_current
  end

  def new
  end

  def create
    genre = Genre.create(genre_params(:name))
    redirect_to genre_path(genre)
  end

  def edit
    @genre = find_current
  end

  def update
    genre = find_current
    genre.update(genre_params(:name))
    redirect_to genre_path(genre)
  end

  private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
