class ArtistsController < ApplicationController
  def index
    @artists=Artist.all
  end

  def show
    @artist=Artist.find(params[:id])
  end

  def new
    @artist=Artist.new
  end

  def create
    new_class=Artist.create(class_params)
    redirect_to artist_path(new_class)
  end

  def edit
    @artist=Artist.find(params[:id])
  end

  def update
    updated_class=Artist.find(params[:id])
    updated_class.update(class_params)
    updated_class.save
    redirect_to artist_path(updated_class)
  end

  private

    def controller_class
      Artist
    end
 
    def class_params
      params.require(:artist).permit(:name, :bio)
    end

end
