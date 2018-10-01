class GenresController < ApplicationController
  def show
    find
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(param(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    find
  end

  def update
    find
    @genre.update(param(:name))
    redirect_to genre_path(@genre)
  end

  private

  def find
    @genre = Genre.find(params[:id])
  end

  def param(*arg)
    params.require(:genre).permit(*arg)
  end
end
