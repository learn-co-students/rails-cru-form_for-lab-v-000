class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = find
  end

  def edit
    @genre = find
  end

  def update
    @genre = find
    @genre.update(genre_params)
    redirect_to genre_path(genre_params)
  end

  private
    def find
      Genre.find(params[:id])
    end

    def genre_params
      params.require(:genre).permit(:name)
    end
end
