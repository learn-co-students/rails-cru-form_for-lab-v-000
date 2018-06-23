class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update ]

   def create
     @artist =  Artist.create(strong_params(:name,:bio))
     if @artist.persisted?
       render :show
     end
   end

   def new
   @artist = Artist.new
   render :form
   end

   def edit
     render :form
   end

   def show
   end

   def update
     @artist.update(strong_params(:name,:bio) )
     redirect_to artist_path(@artist)
   end


    private

     def set_artist
      @artist = Artist.find_by(params[:id])
     end

     def strong_params(*args)
   params.require(:artist).permit(args)
     end

end
