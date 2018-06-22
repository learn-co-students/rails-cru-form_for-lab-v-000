 class SongsController < ApplicationController
   before_action :all_songs, only: :index

      def index
        render :index
      end

     def create
        @song =  Song.create(strong_params(:name, :artist_id, :genre_id))
       if @song.persisted?
        redirect_to song_path(@song)
       end
     end

     def new
        @song = Song.new
     end

     def edit
       @song = set_song
     end

     def show
       @song = set_song
     end

     def update
       @song = set_song
       @song.update(strong_params(:name) )
       redirect_to song_path(@song)
     end


  private

       def set_song
         Song.find_by(params[:id])
       end

       def strong_params(*args)
         params.require(:song).permit(args)
       end

       def all_songs
         @songs = Song.all
       end


 end
