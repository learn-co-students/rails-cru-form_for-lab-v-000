class GenresController < ApplicationController

  def show
    get_genre
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to @genre
  end

  def edit
    get_genre
  end

  def update
    get_genre
    @genre.update(genre_params)
    redirect_to @genre
  end

  private

    def get_genre
      @genre = Genre.find(params[:id])
    end

    def genre_params
      params.require(:genre).permit(:name)
    end

end
