class GenresController < ApplicationController

  # ---------- READ -----------
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find_by(id: params[:id])
  end

# ---------- CREATE -----------

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(dynamic_params(:name))
    redirect_to genre_path(@genre)
  end

# ---------- UPDATE -----------

  def edit
    @genre = Genre.find_by(id: params[:id])
  end

  def update
    @genre = Genre.find_by(id: params[:id])
    @genre.update(dynamic_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def dynamic_params(*args)
    params.require(:genre).permit(*args)
  end
end
