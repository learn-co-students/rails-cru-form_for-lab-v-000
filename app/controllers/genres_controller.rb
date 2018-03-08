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
    @genre = Genre.new(genre_params(:name))
    @genre.artist = Artist.find_or_create_by(:name => params[:genre][:artist])
    @genre.genre = Genre.find_or_create_by(:name => params[:genre][:genre])
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    set_genre
  end

  def update
    set_genre
    @genre.update(genre_params(:name, :bio))
    redirect_to genre_path(@genre)
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

end
