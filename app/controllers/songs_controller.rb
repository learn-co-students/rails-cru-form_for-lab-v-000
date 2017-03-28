class SongsController < ApplicationController
  def new
        @song = Song.new
        render :form
    end
    def index
        @songs = Song.all
    end
    def create
        @song = Song.new(post_params(:name))
        if @song.save
            redirect_to song_path(@song)
        else
            redirect_to songs_path
        end
    end

    def edit
        @song = Song.find_by(id: params[:id])
        render :form
    end

    def update
        @song = Song.find_by(id: params[:id])
        if @song.update(post_params(:name))
            redirect_to song_path(@song)
        else
            redirect_to songs_path
        end
    end

    def show
        
        @song = Song.find_by(id: params[:id])
    end

    private
    def post_params(*args)
        params.require(:song).permit(*args)
    end
end
