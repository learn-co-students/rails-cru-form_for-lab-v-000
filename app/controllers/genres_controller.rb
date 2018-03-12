class GenresController < ApplicationController
  def create
    @genre = Genre.create(name: params[:genre][:name])
    redirect_to genres_path(@path)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(post_params(:name))
    redirect_to genres_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def index
    @genre = Genre.last
  end

  private

  def post_params(*args)
    params.require(:genre).permit(*args)
  end
end
