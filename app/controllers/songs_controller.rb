class SongsController < ApplicationController

      def index
        @song = Song.all
      end

      def new
        @song = Song.new
      end

      def show
        # binding.pry
        @song = Song.find_by_id(params[:id])
        @song_genre = @song.genre
        @song_artist = @song.artist
      end

      def create
        @song = Song.new(song_params(:name))
        @song.genre = Genre.find_or_create_by(song_params[:genre_id])
        @song.artist = Artist.find_or_create_by(song_params[:artist_id])
        @song.save
        redirect_to song_path(@song)
    	end

      def edit
        @song = Song.find_by_id(params[:id])
      end

      def update
        @song = Song.find(params[:id])
        @song.update(song_params(:name))
        redirect_to song_path(@song)
      end

      private

      def song_params(*args)
        params.require(:song).permit(*args)
      end
end
