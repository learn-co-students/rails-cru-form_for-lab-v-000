class GenresController < ApplicationController

  def show
    @genre = current_genre
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(params_path)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = current_genre
  end

  def update
    @genre = current_genre
    @genre.update(params_path)
    redirect_to genre_path(@genre)
  end

  private

    def current_genre
      Genre.find(params[:id])
    end

    def params_path
      params.require(:genre).permit(:name)
    end
end
