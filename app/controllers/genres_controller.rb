class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def show
    get_genre
  end

  def create
    @genre = Genre.create(get_params)
    redirect_to genre_path(@genre)
  end

  def edit
    get_genre
  end

  def update
    get_genre
    @genre.update(get_params)
    redirect_to genre_path(@genre)
  end

  private

    def get_genre
      @genre = Genre.find(params[:id])
    end

    def get_params
      params.require(:genre).permit(:name)
    end

end
