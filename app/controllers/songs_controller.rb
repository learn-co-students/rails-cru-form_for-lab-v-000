 class SongsController < ApplicationController
   before_action :all_songs, only: :index
   before_action :set_song, only: [:show, :edit, :update ]
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
        render :form
     end

     def edit
       render :form
     end

     def show
     end

     def update
       @song.update(strong_params(:name, :artist_id, :genre_id) )
       redirect_to song_path(@song)
     end


  private

       def set_song
         @song = Song.find_by(params[:id])
       end

       def strong_params(*args)
         params.require(:song).permit(args)
       end

       def all_songs
         @songs = Song.all
       end


 end
