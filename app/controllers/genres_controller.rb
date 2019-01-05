class GenresController < ApplicationController

  def
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(paramd[:id])

  end

  def update
    @genre = Genre.find(genre_params[:name])
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
end

private

def genre_params(*args)
  params.require(:genre).permit(*args)
end




end
