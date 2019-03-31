class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.new(post_params(:name))
    genre.save

    redirect_to genre_path(genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update

  end

  private

    def post_params(*args)
      params.require(:genre).permit(*args)
    end
end
