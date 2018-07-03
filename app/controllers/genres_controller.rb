class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
  end

  def create
    @genre = Genre.create(pass_params)

    redirect_to @genre
  end

  def show
    find_genre
  end

  def edit
    find_genre
  end

  def update
    find_genre
    @genre.update(pass_params)

    redirect_to @genre
  end

  private
    def pass_params
      params.require(:genre).permit(:name)
    end

    def find_genre
      @genre = Genre.find(params[:id])
    end
end
