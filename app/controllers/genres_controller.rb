class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(genre_params)
    redirect_to genre_path(genre)
  end

  def show
    grab_genre
  end

  def edit
    grab_genre
  end

  def update
    grab_genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private

    def grab_genre
      @genre = Genre.find(params[:id])
    end

    def genre_params
      params.require(:genre).permit(:name)
    end

end
