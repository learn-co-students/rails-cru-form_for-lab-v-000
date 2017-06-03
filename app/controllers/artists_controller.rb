class ArtistsController < ApplicationController
  def create
    @artist = Artist.new(name:params[:artist][:name],bio:params[:artist][:bio])
    if @artist.save
      redirect_to artist_path(@artist)
    else
      erb :"/artists/new"
    end
  end

  def update
    @artist = Artist.find_by(id:params[:id])
    @artist.update(name:params[:artist][:name],bio:params[:artist][:bio])
    @artist.save
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find_by(id:params[:id])
  end

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find_by(id: params[:id])
  end

end
