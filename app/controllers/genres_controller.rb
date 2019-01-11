class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def create
    #raise params.inspect
    @genre = Genre.new(post_params(:name))
    #raise @genre.inspect
    @genre.save
    redirect_to genre_url(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    #raise params.inspect
    @genre = Genre.find(params[:id])
    @genre.update(post_params(:name))
    redirect_to genre_url(@genre)
  end

  private

  def post_params(*args)
    params.require(:genre).permit(*args)
  end

end
