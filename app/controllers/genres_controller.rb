class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(post_params(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find_by(params[:id])
  end

  def edit
    @genre = Genre.find_by(params[:id])
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(post_params(:name))
    redirect_to genre_path(@genre)
  end

  private

    def post_params(*args)
      params.require(:genre).permit(*args)
    end

end
