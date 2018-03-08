class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    set_genre
    @songs = Song.all
  end

  def new
    @genre = Genre.new
  end

  def create
    if Genre.find_by(:name => genre_params[:name])
      @genre = Genre.find_by(:name => genre_params[:name])
    else
    @genre = Genre.new(:name => genre_params[:name])
    end
    @genre.save

    redirect_to genre_path(@genre)
  end

  def edit
    set_genre
  end

  def update
    set_genre
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(:name)
  end

end
