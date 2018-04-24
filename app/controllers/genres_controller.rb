class GenresController < ApplicationController
  before_action :find_genre, only: [:show, :edit, :update]

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(list_params(:name))
    redirect_to genre_path(@genre)
  end

  def index
    @genres = Genre.all
  end

  def show
  end

  def edit
  end

  def update
    @genre.update(list_params(:name))
    redirect_to genre_path(@genre)
  end

  def destroy
  end

  private 
    def list_params(*args)
      params.require(:genre).permit(*args)
    end

    def find_genre
      @genre = Genre.find(params[:id])
    end
end