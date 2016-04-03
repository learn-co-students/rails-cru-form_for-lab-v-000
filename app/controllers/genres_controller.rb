class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    set_genre
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    set_genre
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    set_genre
  end

  private
    def set_genre
      @genre = Genre.find(params[:id])
    end

    def genre_params
      params.require(:genre).permit(:name)
    end
end
