class SongsController < ApplicationController

  before_action :set_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(post_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
  end

  def update
    @song.update(post_params)
    redirect_to song_path(@song)
  end

  private

    def set_song
      @song = Song.find(params[:id])
    end

    def post_params
      params.require(:song).permit(:name, :bio, :artist_id, :genre_id)
    end

  end
