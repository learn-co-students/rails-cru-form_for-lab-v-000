class ArtistsController < ApplicationController


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
     @artist = set_artist
     render :form
   end

   def show
     @artist = set_artist
   end

   def update
     @artist = set_artist
     @artist.update(strong_params(:name,:bio) )
     redirect_to artist_path(@artist)
   end


    private

     def set_artist
       Artist.find_by(params[:id])
     end

     def strong_params(*args)
   params.require(:artist).permit(args)
     end

end
