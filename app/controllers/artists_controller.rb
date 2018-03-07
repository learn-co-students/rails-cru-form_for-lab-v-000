class ArtistsController < ApplicationController

  def new
     end

     def create
         @artist = Artist.new(param_parser(:name, :bio))
         @artist.save
         redirect_to artist_path(@artist)
     end

     def index
         @artists = Artist.all
     end

     def show
         @artist = Artist.find(params[:id])
     end

     def edit
         @artist = Artist.find(params[:id])
     end

     def update
         @artist = Artist.find(params[:id])
         @artist.update(param_parser(:name, :bio))
         redirect_to artist_path(@artist)
     end

     private

     def param_parser(*args)
         params.require(:artist).permit(*args)
     end

 end
