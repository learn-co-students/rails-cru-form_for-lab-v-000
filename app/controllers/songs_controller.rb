class SongsController < ApplicationController
  def index
    @songs=Song.all
  end

  def show
    @song=Song.find(params[:id])
  end

  def new
    @song=Song.new
  end

  def create
    new_class=Song.create(class_params)
    new_class.save
    redirect_to song_path(new_class)
  end

  def edit
    @song=Song.find(params[:id])
  end

  def update
    updated_class=Song.find(params[:id])
    updated_class.update(class_params)
    updated_class.save
    redirect_to song_path(updated_class)
  end

  private

    def controller_class
      Song
    end
 
    def class_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end