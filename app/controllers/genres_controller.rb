class GenresController < ApplicationController

  def show
    @genre = current_genre
  end

  def new
    
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = current_genre
  end

  def update
    current_genre.update(genre_params)
    redirect_to genre_path(current_genre)
  end

  private

  def current_genre
    Genre.find(params[:id])
  end
  
  def genre_params
    params.require(:genre).permit(:name)
  end
end
